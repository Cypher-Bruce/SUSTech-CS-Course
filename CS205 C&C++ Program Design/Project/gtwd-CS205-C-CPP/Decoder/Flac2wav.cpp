//
// Created by Roderick Qiu on 2023/12/2.
//

#include "Flac2wav.h"
#include <cstring>
#include <iomanip>
#include "MD5.h"

void Flac2wav::decodeFile(fileReader &in, fileWriter &out) {
    if(in.readBigUInt(32) != 0x664c6143) {
        throw std::runtime_error("Not a flac file (Flac2wav::decodeFile)");
    }
    unsigned int maxBlockSize = -1;
    unsigned int minBlockSize = -1;
    unsigned int maxFrameSize = -1;
    unsigned int minFrameSize = -1;
    unsigned int sampleRate = -1;
    unsigned int numChannels = -1;
    unsigned int sampleDepth = -1;
    unsigned long long numSamples = -1;
    unsigned int MD5Code[4];
    bool isLastBlock = false;
    bool isFirstBlock = true;
    while(!isLastBlock) {
        isLastBlock = in.readBigUInt(1);
        unsigned int blockType = in.readBigUInt(7);
        unsigned int blockSize = in.readBigUInt(24);
        if(blockType == 0) {
            // streamInfo block
            minBlockSize = in.readBigUInt(16);
            maxBlockSize = in.readBigUInt(16);
            minFrameSize = in.readBigUInt(24);
            maxFrameSize = in.readBigUInt(24);
            sampleRate = in.readBigUInt(20);
            numChannels = in.readBigUInt(3) + 1;
            sampleDepth = in.readBigUInt(5) + 1;
            numSamples = ((unsigned long long)in.readBigUInt(18)) << 18 | in.readBigUInt(18);
            for (int i = 0; i < 4; ++i) {
                MD5Code[i] = in.readBigUInt(32);
            }
            cout<<"minBlockSize: "<<minBlockSize<<endl;
            cout<<"maxBlockSize: "<<maxBlockSize<<endl;
            cout<<"minFrameSize: "<<minFrameSize<<endl;
            cout<<"maxFrameSize: "<<maxFrameSize<<endl;
            cout<<"sampleRate: "<<sampleRate<<endl;
            cout<<"numChannels: "<<numChannels<<endl;
            cout<<"sampleDepth: "<<sampleDepth<<endl;
            cout<<"numSamples: "<<numSamples<<endl;
            cout<<"MD5Code: ";
            for (int i = 0; i < 4; ++i) {
                cout << setw(8) << setfill('0') << hex << MD5Code[i] << " ";
            }
            cout<<endl;
        } else {
            if(isFirstBlock) {
                throw std::runtime_error("First block is not streamInfo (Flac2wav::decodeFile)");
            }
            // discard metadata
            for (int i = 0; i < blockSize; ++i) {
                in.readBigUInt(8);
            }
        }
        isFirstBlock = false;
    }
    if(sampleRate == 0){
        throw std::runtime_error("sampleRate should not be 0 (Flac2wav::decodeFile)");
    }
    if(sampleDepth != 16 && sampleDepth != 24) {
        throw std::runtime_error("sampleDepth should be 16 or 24 (Flac2wav::decodeFile)");
    }

    // write wav
    unsigned long long sampleDataLength = numSamples * numChannels * sampleDepth / 8;
    out.writeBigInt(0x52494646, 32); // "RIFF"
    out.writeLittleInt((int)(sampleDataLength + 36), 32); // file length
    out.writeBigInt(0x57415645, 32); // "WAVE"
    out.writeBigInt(0x666d7420, 32); // "fmt "
    out.writeLittleInt(16, 32); // fmt chunk size
    out.writeLittleInt(1, 16); // format tag
    out.writeLittleInt(numChannels, 16); // channels
    out.writeLittleInt(sampleRate, 32); // sample rate
    out.writeLittleInt(sampleRate * numChannels * sampleDepth / 8, 32); // byte rate
    out.writeLittleInt(numChannels * sampleDepth / 8, 16); // block align
    out.writeLittleInt(sampleDepth, 16); // bits per sample
    out.writeBigInt(0x64617461, 32); // "data"
    out.writeLittleInt((int)sampleDataLength, 32); // data chunk size

    MD5 md5;
    fileInfo info{minBlockSize, maxBlockSize, numChannels, sampleRate, sampleDepth};

    int blockSizeExceptionCount = 0;
    while(decodeFrames(in, out, numChannels, sampleDepth, md5, info, blockSizeExceptionCount));

    md5.finalizeMD5();
    if(!md5.checkMD5(MD5Code)) {
        throw std::runtime_error("MD5Code check failed (Flac2wav::decodeFile)");
    }
}

bool Flac2wav::decodeFrames(fileReader &in, fileWriter &out, unsigned int numChannels, unsigned int sampleDepth, MD5 &md5, fileInfo info, int &exceptionCount) {
    in.resetCRC8();
    in.resetCRC16();

    unsigned int syncCode;
    try {
        syncCode = in.readBigUInt(14);
    } catch (std::runtime_error &e) {
        if(strcmp(e.what(), "Reached end of file") != 0) {
            throw e;
        }
        return false;
    }

    if(exceptionCount){
        throw std::runtime_error("Invalid fixed blockSize (Flac2wav::decodeFrame)");
    }

    if(syncCode != 0x3FFE) {
        throw std::runtime_error("Invalid Sync Code (Flac2wav::decodeFrame)");
    }
    unsigned int reserved = in.readBigUInt(1);
    if(reserved != 0) {
        throw std::runtime_error("Reserved bit should be 0 (Flac2wav::decodeFrame)");
    }
    unsigned int blockingStrategy = in.readBigUInt(1);
    unsigned int blockSizeCode = in.readBigUInt(4);
    unsigned int sampleRateCode = in.readBigUInt(4);
    unsigned int channelAssignmentCode = in.readBigUInt(4);
    unsigned int sampleDepthCode = in.readBigUInt(3);
    unsigned int reserved2 = in.readBigUInt(1);
    if(reserved2 != 0) {
        throw std::runtime_error("Reserved bit should be 0 (Flac2wav::decodeFrame)");
    }

    unsigned int utf8LengthCode = in.readBigUInt(8) << 24;
    int utf8Length = 0;
    while(utf8LengthCode & (1 << 31)) {
        utf8Length++;
        utf8LengthCode <<= 1;
    }
    for (int i = 0; i < utf8Length - 1; ++i) {
        in.readBigUInt(8);
    }

    // blocking strategy
    unsigned int blockSize = 0;
    if(blockSizeCode == 1) {
        blockSize = 192;
    } else if(blockSizeCode >= 2 && blockSizeCode <= 5) {
        blockSize = 576 << (blockSizeCode - 2);
    } else if(blockSizeCode == 6) {
        blockSize = in.readBigUInt(8) + 1;
    } else if(blockSizeCode == 7) {
        blockSize = in.readBigUInt(16) + 1;
    } else if(blockSizeCode >= 8 && blockSizeCode <= 15) {
        blockSize = 256 << (blockSizeCode - 8);
    } else {
        throw std::runtime_error("Reserved blockSizeCode (Flac2wav::decodeFrame)");
    }

    // sample rate
    unsigned int frameSampleRate = 0;
    if(sampleRateCode == 0){
        frameSampleRate = info.sampleRate;
    }else if(sampleRateCode == 1){
        frameSampleRate = 88200;
    }else if(sampleRateCode == 2){
        frameSampleRate = 176400;
    }else if(sampleRateCode == 3){
        frameSampleRate = 192000;
    }else if(sampleRateCode == 4){
        frameSampleRate = 8000;
    }else if(sampleRateCode == 5){
        frameSampleRate = 16000;
    }else if(sampleRateCode == 6){
        frameSampleRate = 22050;
    }else if(sampleRateCode == 7){
        frameSampleRate = 24000;
    }else if(sampleRateCode == 8){
        frameSampleRate = 32000;
    }else if(sampleRateCode == 9){
        frameSampleRate = 44100;
    }else if(sampleRateCode == 10){
        frameSampleRate = 48000;
    }else if(sampleRateCode == 11){
        frameSampleRate = 96000;
    }else if(sampleRateCode == 12){
        frameSampleRate = in.readBigUInt(8) * 1000;
    }else if(sampleRateCode == 13){
        frameSampleRate = in.readBigUInt(16);
    }else if(sampleRateCode == 14){
        frameSampleRate = in.readBigUInt(16) * 10;
    }else if(sampleRateCode == 15){
        throw std::runtime_error("Invalid sampleRateCode (Flac2wav::decodeFrame)");
    }

    unsigned int frameSampleDepth = 0;
    if(sampleDepthCode == 0){
        frameSampleDepth = info.bitsPerSample;
    }else if(sampleDepthCode == 1){
        frameSampleDepth = 8;
    }else if(sampleDepthCode == 2){
        frameSampleDepth = 12;
    }else if(sampleDepthCode == 3){
        throw std::runtime_error("Invalid sampleDepthCode (Flac2wav::decodeFrame)");
    }else if(sampleDepthCode == 4){
        frameSampleDepth = 16;
    }else if(sampleDepthCode == 5){
        frameSampleDepth = 20;
    }else if(sampleDepthCode == 6){
        frameSampleDepth = 24;
    }else if(sampleDepthCode == 7){
        frameSampleDepth = 32;
    }

    in.readBigUInt(8); // CRC8
    if(!in.checkCRC8()) {
        throw std::runtime_error("CRC8 check failed (Flac2wav::decodeFrame)");
    }

    // robustness check
    if(blockingStrategy == 0) {
        // fixed block size
        if(blockSize != info.minimumBlockSize) {
            exceptionCount++;
        }
    } else {
        // variable block size
        if(blockSize < info.minimumBlockSize || blockSize > info.maximumBlockSize) {
            throw std::runtime_error("Invalid variable blockSize (Flac2wav::decodeFrame)");
        }
    }
    if(frameSampleRate != info.sampleRate) {
        throw std::runtime_error("Invalid frameSampleRate (Flac2wav::decodeFrame)");
    }
    if(channelAssignmentCode >= 11) {
        throw std::runtime_error("Reserved channelAssignmentCode (Flac2wav::decodeFrame)");
    }else if(channelAssignmentCode >= 8 && info.numberOfChannels != 2) {
        throw std::runtime_error("Invalid channelAssignmentCode (Flac2wav::decodeFrame)");
    }else if(channelAssignmentCode < 8 && info.numberOfChannels != channelAssignmentCode + 1) {
        throw std::runtime_error("Invalid channelAssignmentCode (Flac2wav::decodeFrame)");
    }
    if(frameSampleDepth != info.bitsPerSample) {
        throw std::runtime_error("Invalid frameSampleDepth (Flac2wav::decodeFrame)");
    }


    unsigned int* samples[numChannels];
    for (int i = 0; i < numChannels; ++i) {
        samples[i] = new unsigned int[blockSize];
    }
    decodeSubFrames(in, sampleDepth, channelAssignmentCode, numChannels, blockSize, samples);
    in.alignByte();

    in.readBigUInt(16); // CRC16
    if(!in.checkCRC16()) {
        throw std::runtime_error("CRC16 check failed (Flac2wav::decodeFrame)");
    }

    for (int i = 0; i < blockSize; ++i) {
        for (int j = 0; j < numChannels; ++j) {
            out.writeLittleInt(samples[j][i], (int)sampleDepth);
            for (int k = 0; k < sampleDepth / 8; ++k) {
                md5.updateMD5((unsigned char)(samples[j][i] >> (k * 8)));
            }
        }
    }

    for (int i = 0; i < numChannels; ++i) {
        delete[] samples[i];
    }
    return true;
}

void Flac2wav::decodeSubFrames(fileReader &in, unsigned int sampleDepth, unsigned int channelAssignment, unsigned int numChannels, unsigned int blockSize, unsigned int* samples[]) {
    long long* results[numChannels];
    for (int i = 0; i < numChannels; ++i) {
        results[i] = new long long[blockSize];
    }

    if(channelAssignment <= 7){
        for (int i = 0; i < channelAssignment + 1; ++i) {
            decodeSubFrame(in, sampleDepth, blockSize, results[i]);
        }
    }else if(channelAssignment >= 8 && channelAssignment <= 10) {
        decodeSubFrame(in, sampleDepth, sampleDepth, results[0]);
        decodeSubFrame(in, sampleDepth, sampleDepth, results[1]);
        if(channelAssignment == 8) {
            for (int i = 0; i < blockSize; ++i) {
                results[1][i] = results[0][i] - results[1][i];
            }
        }else if(channelAssignment == 9) {
            for (int i = 0; i < blockSize; ++i) {
                results[0][i] = results[0][i] + results[1][i];
            }
        }else if(channelAssignment == 10) {
            for (int i = 0; i < blockSize; ++i) {
                long long mid = results[0][i];
                long long side = results[1][i];
                results[0][i] = mid + (side >> 1);
                results[1][i] = mid - (side >> 1);
            }
        }
    }else {
        throw std::runtime_error("Reserved channelAssignmentCode (Flac2wav::decodeSubFrames)");
    }

    for (int i = 0; i < numChannels; ++i) {
        for (int j = 0; j < blockSize; ++j) {
            samples[i][j] = (unsigned int)results[i][j];
        }
    }

    for (int i = 0; i < numChannels; ++i) {
        delete[] results[i];
    }
}

void Flac2wav::decodeSubFrame(fileReader &in, unsigned int sampleDepth, unsigned int blockSize, long long int *result) {
    unsigned int padding = in.readBigUInt(1);
    if(padding != 0) {
        throw std::runtime_error("Reserved padding bit (Flac2wav::decodeSubFrame)");
    }

    unsigned int type = in.readBigUInt(6);
    if(type != 1){
        throw std::runtime_error("Not a verbatim subFrame (Flac2wav::decodeSubFrame)");
    }

    unsigned int wastedBits = in.readBigUInt(1);
    if(wastedBits){
        while(!in.readBigUInt(1)){
            wastedBits++;
        }
    }
    sampleDepth -= wastedBits;

    for (int i = 0; i < blockSize; ++i) {
        result[i] = in.readBigSInt((int)sampleDepth);
        result[i] <<= wastedBits;
    }
}


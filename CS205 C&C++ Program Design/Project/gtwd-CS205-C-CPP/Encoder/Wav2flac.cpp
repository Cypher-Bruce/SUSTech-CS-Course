//
// Created by Roderick Qiu on 2023/12/2.
//

#include "Wav2flac.h"
#include "FlacMetadata.h"
#include<fstream>
#include <cstring>
#include "MD5.h"

static const int BLOCK_SIZE = 4096;

void Wav2flac::encodeSubframe(int samples[], unsigned long len, int sampleDepth, fileWriter &out) {
    out.writeBigInt(0, 1);
    out.writeBigInt(1, 6);
    out.writeBigInt(0, 1);
    for (int i = 0; i < len; i++) {
        out.writeBigInt(samples[i], sampleDepth);
    }
}

void Wav2flac::encodeFrame(fileReader &in, fileWriter &out, unsigned int frameIndex, unsigned int numChannels,
                           unsigned int sampleDepth, unsigned int sampleRate,
                           int blockSize, MD5 &md5) {
    int samples[numChannels][blockSize];
    unsigned int bytesPerSample = sampleDepth / 8;
    for (int i = 0; i < blockSize; i++) {
        for (int ch = 0; ch < numChannels; ch++) {
            int val = 0;
            for (int j = 0; j < bytesPerSample; j++) {
                unsigned int b = in.readLittleUInt(8);
                md5.updateMD5(b);
                if (b == -1) {
                    throw exception();
                }
                val |= b << (j * 8);
            }
            if (sampleDepth == 8) {
                samples[ch][i] = val - 128;
            } else {
                samples[ch][i] = (val << (32 - sampleDepth)) >> (32 - sampleDepth);
            }
        }
    }
    out.resetCRC();
    out.writeBigInt(0x3FFE, 14); // Sync code '11111111111110'
    out.writeBigInt(0, 1); // Reserved: mandatory value
    out.writeBigInt(0, 1); // Blocking strategy: fixed-blocksize stream
    out.writeBigInt(7, 4); // Block size in inter-channel samples: reserved
    out.writeBigInt(sampleRate % 10 == 0 ? 14 : 13, 4); // Sample rate
    out.writeBigInt(numChannels - 1, 4); // Channel assignment
    // 	Sample size in bits
    switch (sampleDepth) {
        case 16:
            out.writeBigInt(4, 3);
            break;
        case 24:
            out.writeBigInt(6, 3);
            break;
        default:
            throw runtime_error("Invalid Sample Depth");
    }
    out.writeBigInt(0, 1); // Reserved
    out.writeBigInt(0xFC | (frameIndex >> 30), 8); // "UTF-8" coded frame number
    for (int i = 24; i >= 0; i -= 6) {
        out.writeBigInt(0x80 | ((frameIndex >> i) & 0x3F), 8);
    }
    out.writeBigInt(blockSize - 1, 16);
    out.writeBigInt(sampleRate / (sampleRate % 10 == 0 ? 10 : 1), 16);
    out.writeBigInt(out.CRC8, 8);
    for (int i = 0; i < sizeof(samples) / sizeof(samples[0]); i++) {
        encodeSubframe(samples[i], sizeof(samples[0]) / sizeof(samples[0][0]), sampleDepth, out);
    }
    out.alignByte();
    out.writeBigInt(out.CRC16, 16);
}

void Wav2flac::encodeFile(fileReader &in, fileWriter &out, FlacMetadata::MetaEditInfo metaEditInfo, double v) {
    if (in.readBigUInt(32) != 0x52494646) {
        throw runtime_error("Invalid RIFF file header (Wav2flac::encodeFile)");
    }
    unsigned int sampleRate = 0;
    unsigned int numChannels = 0;
    unsigned int blockAlign = 0;
    unsigned int sampleDepth = 0;
    unsigned int bps = 0;
    unsigned int sampleDataLen = 0;
    unsigned int dataLength = in.readLittleUInt(32);
    // String "RIFF"
    if (in.readBigUInt(32) != 0x57415645) {
        throw runtime_error("Invalid WAV file header 'WAVE' (Wav2flac::encodeFile)");
    }
    // String "WAVE"
    if (in.readBigUInt(32) != 0x666d7420) {
        throw runtime_error("Unrecognized WAV file chunk 'fmt ' (Wav2flac::encodeFile)");
    }
    // String "fmt "
    if (in.readLittleUInt(32) != 16) {
        throw runtime_error("Invalid WAV file chunk size (Wav2flac::encodeFile)");
    }
    if (in.readLittleUInt(16) != 0x0001) {
        throw runtime_error("Invalid WAV file format (Wav2flac::encodeFile)");
    }
    numChannels = in.readLittleUInt(16);
    if (numChannels <= 0 || numChannels > 8) {
        throw runtime_error("Invalid WAV file channel count (Wav2flac::encodeFile)");
    }
    cout << "numChannels: " << numChannels << endl;
    sampleRate = in.readLittleUInt(32);
    if (sampleRate <= 0 || sampleRate >= (1 << 20)) {
        throw runtime_error("Invalid WAV file sample rate (Wav2flac::encodeFile)");
    }
    sampleRate /= v;
    cout << "sampleRate: " << sampleRate << endl;
    bps = in.readLittleUInt(32);
    bps = bps >> 4;
    blockAlign = in.readLittleUInt(16);
    sampleDepth = in.readLittleUInt(16);
    if (sampleDepth == 0 || sampleDepth > 32 || sampleDepth % 8 != 0) {
        throw runtime_error("Unsupported WAV file sample depth");
    }
    cout << "sampleDepth: " << sampleDepth << endl;
    if (in.readBigUInt(32) != 0x64617461) {
        throw runtime_error("Invalid WAV file data chunk header 'data' (Wav2flac::encodeFile)");
    }
    sampleDataLen = in.readLittleUInt(32);
    if (sampleDataLen <= 0 || sampleDataLen % (numChannels * (sampleDepth / 8)) != 0) {
        throw runtime_error("Invalid length of audio sample data");
    }
    cout << "sampleDataLen: " << sampleDataLen << endl;
    int numSamples = sampleDataLen / (numChannels * (sampleDepth / 8));
    cout << "numSamples: " << numSamples << endl;
    cout << "-----------------\n";
    cout << "Writing flac\n";
    // Encoding FLAC file
    // header
    out.writeBigInt(0x664c6143, 32); // "fLaC"
    // METADATA_BLOCK
    // METADATA_BLOCK_HEADER
    out.writeBigInt(0, 1); // Last-metadata-block flag: not last
    out.writeBigInt(0, 7); // BLOCK_TYPE: 0 - streaminfo
    out.writeBigInt(34, 24); // Length (in bytes) of metadata to follow (not METADATA_BLOCK_HEADER)
    //METADATA_BLOCK_STREAMINFO
    out.writeBigInt(BLOCK_SIZE, 16);// minimum block size: constant
    out.writeBigInt(BLOCK_SIZE, 16);// maximum block size: constant
    out.writeBigInt(0, 24);// minimum frame size: 0 - unknown
    out.writeBigInt(0, 24);// maximum frame size: 0 - unknown
    out.writeBigInt(sampleRate, 20);// sample rate in Hz, max = 655350, 0 is invalid
    out.writeBigInt(numChannels - 1, 3); // (number of channels) - 1
    out.writeBigInt(sampleDepth - 1, 5); // (bits per sample) - 1
    out.writeBigInt(numSamples >> 18, 18); // Total samples in stream
    out.writeBigInt(numSamples, 18);
    // MD5 signature
    streampos md5Index = out.get().tellp();
    for (int i = 0; i < 16; i++) {
        out.writeBigInt(0, 8);
    }
    // VORBIS_COMMENT
    // METADATA_BLOCK_HEADER
    out.writeBigInt(1, 1); // last
    out.writeBigInt(4, 7); // vorbis comment block
    streampos sizeIndex = out.get().tellp();
    out.writeBigInt(0, 24); // block size
    // METADATA_BLOCK_VORBIS_COMMENT
    // https://www.xiph.org/vorbis/doc/v-comment.html
    long long size = 0;
    string s = metaEditInfo.newVendorString; // vendor
    if (s.empty()) {
        s = "Global Transcoder for WAV/FLAC/AIFF Data";
    }
    out.writeLittleInt(s.length(), 32); // vendor length
    out.writeStr(s);
    vector<string> str = metaEditInfo.newComments;
    out.writeLittleInt(str.size(), 32); // user comment list length
    size += s.length() + 8;
    for (int i = 0; i < str.size(); i++) {
        out.writeLittleInt(str[i].length(), 32);
        out.writeStr(str[i]);
        size += str[i].length() + 4;
    }
    out.get().seekp(sizeIndex, ios::beg);
    out.writeBigInt(size, 24);
    out.get().seekp(0, ios::end);

    // FRAME
    MD5 md5;
    for (int i = 0; numSamples > 0; i++) {
        unsigned int blockSize = min(numSamples, BLOCK_SIZE);
        encodeFrame(in, out, i, numChannels, sampleDepth, sampleRate, blockSize, md5);
        numSamples -= blockSize;
    }

    bool flag = true;
    try{
        in.readBigUInt(1);
    }
    catch (exception &e) {
        if(strcmp(e.what(), "Reached end of file")==0){
            flag = false;
        }
    }
    if(flag){
        throw runtime_error("Not finished reading the file");
    }
    md5.finalizeMD5();
    unsigned int md5int[4];
    md5.getMD5(md5int);
    out.get().seekp(md5Index, ios::beg);
    for (int i = 0; i < 4; i++) {
        out.writeBigInt(md5int[i], 32);
    }
    out.get().seekp(0, ios::end);
}



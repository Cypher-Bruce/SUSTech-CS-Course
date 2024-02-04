#include "Aiff2wav.h"
#include <iostream>
#include <vector>
#include <unordered_map>
#include <cstring>

using namespace std;

static unordered_map<unsigned int, vector<unsigned int>> aiffSampleRateTable = {
        {8000,    {64, 11, 250, 0,   0, 0, 0, 0, 0, 0}},
        {11025,   {64, 12, 172, 68,  0, 0, 0, 0, 0, 0}},
        {16000,   {64, 12, 250, 0,   0, 0, 0, 0, 0, 0}},
        {22050,   {64, 13, 172, 68,  0, 0, 0, 0, 0, 0}},
        {32000,   {64, 13, 250, 0,   0, 0, 0, 0, 0, 0}},
        {37800,   {64, 14, 147, 168, 0, 0, 0, 0, 0, 0}},
        {44056,   {64, 14, 172, 24,  0, 0, 0, 0, 0, 0}},
        {44100,   {64, 14, 172, 68,  0, 0, 0, 0, 0, 0}},
        {47250,   {64, 14, 184, 146, 0, 0, 0, 0, 0, 0}},
        {48000,   {64, 14, 187, 128, 0, 0, 0, 0, 0, 0}},
        {50000,   {64, 14, 195, 80,  0, 0, 0, 0, 0, 0}},
        {50400,   {64, 14, 196, 224, 0, 0, 0, 0, 0, 0}},
        {88200,   {64, 15, 172, 68,  0, 0, 0, 0, 0, 0}},
        {96000,   {64, 15, 187, 128, 0, 0, 0, 0, 0, 0}},
        {176400,  {64, 16, 172, 68,  0, 0, 0, 0, 0, 0}},
        {192000,  {64, 16, 187, 128, 0, 0, 0, 0, 0, 0}},
        {352800,  {64, 17, 172, 68,  0, 0, 0, 0, 0, 0}},
        {2822400, {64, 20, 172, 68,  0, 0, 0, 0, 0, 0}},
        {5644800, {64, 21, 172, 68,  0, 0, 0, 0, 0, 0}}
};

unsigned int Aiff2wav::getAiffSampleRate(vector<unsigned int> &fileData) {
    for (const auto &it: aiffSampleRateTable) {
        if (tenByteMatch(fileData, 0, it.second, 0)) {
            return it.first;
        }
    }
    throw runtime_error("Not a valid sample rate (Aiff2wav::getAiffSampleRate)");
}

bool
Aiff2wav::tenByteMatch(vector<unsigned int> &v1, int startIndex1, const vector<unsigned int> &v2, int startIndex2) {
    for (int i = 0; i < 10; i++) {
        if (v1[startIndex1 + i] != v2[startIndex2 + i])
            return false;
    }

    return true;
}

void Aiff2wav::encodeFile(fileReader &in, fileWriter &out) {
    cout << "Aiff2wav::encodeFile: called" << endl;
    if (in.readBigUInt(32) != 0x464F524D) {
        throw runtime_error("Not a valid AIFF file header, or actually AIFF-C (Aiff2wav::encodeFile)");
    }
    in.readBigUInt(32);// All size
    if (in.readBigUInt(32) != 0x41494646) {
        throw runtime_error("Not a valid AIFF file header, or actually AIFF-C (Aiff2wav::encodeFile)");
    }
    cout << "Aiff2wav::encodeFile: valid AIFF file header" << endl;

    bool hasDefinedCOMM = false;
    unsigned int numChannels = 0, totalSamples = 0, bitsPerSample = 0, sampleRate = 0;
    vector<int> soundData;
    while (true) {
        unsigned header = 0;
        try {
            header = in.readBigUInt(32);
        } catch (exception &e) {
            if (strcmp(e.what(), "Reached end of file") != 0) {
                throw e;
            }
            break;
        }
        // COMM chunk reader
        if (header == 0x434F4D4D) {
            if (hasDefinedCOMM) {
                throw runtime_error("Found duplicate COMM chunk (Aiff2wav::encodeFile)");
            }
            hasDefinedCOMM = true;
            cout << "Aiff2wav::encodeFile: reading COMM chunk" << endl;
            if (in.readBigUInt(32) != 18) {
                throw runtime_error("COMM block size is not 18 (Aiff2wav::encodeFile)");
            }
            numChannels = in.readBigUInt(16);
            if (numChannels != 1 && numChannels != 2) {
                throw runtime_error("Unsupported number of channels (Aiff2wav::encodeFile)");
            }
            cout << "Aiff2wav::encodeFile: valid number of channels: " << numChannels << endl;
            totalSamples = in.readBigUInt(32);
            if (totalSamples == 0) {
                throw runtime_error("Unsupported total samples number 0 (Aiff2wav::encodeFile)");
            }
            cout << "Aiff2wav::encodeFile: valid total samples number: " << totalSamples << endl;
            bitsPerSample = in.readBigUInt(16);
            if (bitsPerSample != 16 && bitsPerSample != 24 && bitsPerSample != 32) {
                throw runtime_error("Only support 16/24/32 bits per sample (Aiff2wav::encodeFile)");
            }
            cout << "Aiff2wav::encodeFile: valid bits per sample: " << bitsPerSample << endl;
            vector<unsigned int> sampleRateList;
            for (int i = 0; i < 10; i++) {
                unsigned int cur = in.readBigUInt(8);
                sampleRateList.push_back(cur);
            }
            sampleRate = getAiffSampleRate(sampleRateList);
            cout << "Aiff2wav::encodeFile: valid sample rate: " << sampleRate << endl;
        } else if (header == 0x53534E44) {
            if (!hasDefinedCOMM) {
                throw runtime_error("Found non-COMM chunk before COMM chunk (Aiff2wav::encodeFile)");
            }
            cout << "Aiff2wav::encodeFile: reading SSND chunk" << endl;
            unsigned int chunkSize = in.readBigUInt(32);
            cout << "Aiff2wav::encodeFile: SSND chunk size = " << chunkSize << endl;
            in.readBigUInt(32);
            in.readBigUInt(32);// Skip block size and offset
            for (int i = 0; i < (chunkSize - 4 * 2) * 8 / bitsPerSample; i++) {
                soundData.push_back((int) in.readBigUInt((int) bitsPerSample));
                //cout << i << " ";
            }
            cout << "Aiff2wav::encodeFile: finished SSND chunk, sound data length = " << soundData.size() << endl;
        } else {// Skip chunk
            cout << "Aiff2wav::encodeFile: skipping chunk: " << fileWriter::uint32ToString(header) << endl;
            unsigned int chunkSize = in.readBigUInt(32);
            for (int i = 0; i < chunkSize + 1; i++)// Seems need a +1 here
                in.readBigUInt(8);// Skip chunk data
        }
    }

    // write wav
    unsigned long long sampleDataLength = totalSamples * numChannels * bitsPerSample / 8;
    out.writeBigInt(0x52494646, 32); // "RIFF"
    out.writeLittleInt((int) (sampleDataLength + 36), 32); // file length
    out.writeBigInt(0x57415645, 32); // "WAVE"
    out.writeBigInt(0x666d7420, 32); // "fmt "
    out.writeLittleInt(16, 32); // fmt chunk size
    out.writeLittleInt(1, 16); // format tag
    out.writeLittleInt(numChannels, 16); // channels
    out.writeLittleInt(sampleRate, 32); // sample rate
    out.writeLittleInt(sampleRate * numChannels * bitsPerSample / 8, 32); // byte rate
    out.writeLittleInt(numChannels * bitsPerSample / 8, 16); // block align
    out.writeLittleInt(bitsPerSample, 16); // bits per sample
    out.writeBigInt(0x64617461, 32); // "data"
    out.writeLittleInt((int) sampleDataLength, 32); // data chunk size
    for (int i: soundData) {
        out.writeLittleInt(i, (int) bitsPerSample);
    }
}
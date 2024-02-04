//
// Created by Roderick Qiu on 2023/12/8.
//

#include "Wav2aiff.h"
#include <iostream>
#include <vector>
#include <unordered_map>
#include <cstring>

using namespace std;

static unordered_map<unsigned int, vector<unsigned char>> aiffSampleRateTable = {
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

void Wav2aiff::addSampleRate(unsigned int sampleRate, fileWriter &out) {
    if (aiffSampleRateTable.count(sampleRate) > 0) {
        for (int i = 0; i < 10; i++)
            out.writeBigInt(aiffSampleRateTable[sampleRate][i], 8);
    }
}

void Wav2aiff::encodeFile(fileReader &in, fileWriter &out) {
    cout << "Wav2aiff::encodeFile: called" << endl;
    if (in.readBigUInt(32) != 0x52494646) {
        throw runtime_error("Invalid RIFF file header (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file header" << endl;
    unsigned int sampleRate = 0;
    unsigned int channels = 0;
    unsigned int blockAlign = 0;
    unsigned int bitsPerSample = 0;
    unsigned int bps = 0;
    unsigned int totalSampleLength = 0;
    unsigned int dataLength = in.readLittleUInt(32);
    cout << "Wav2aiff::encodeFile: data length = " << dataLength << " bits" << endl;
    if (in.readBigUInt(32) != 0x57415645) {
        throw runtime_error("Invalid WAV file header 'WAVE' (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file header 'WAVE'" << endl;
    if (in.readBigUInt(32) != 0x666d7420) {
        throw runtime_error("Unrecognized WAV file chunk 'fmt ' (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file chunk 'fmt '" << endl;
    if (in.readLittleUInt(32) != 16) {
        throw runtime_error("Invalid WAV file chunk size (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file chunk size" << endl;
    if (in.readLittleUInt(16) != 1) {
        throw runtime_error("Invalid WAV file format (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file format" << endl;
    channels = in.readLittleUInt(16);
    if (channels < 0 || channels > 2) {
        throw runtime_error("Invalid WAV file channel count (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: WAV file channel count = " << channels << endl;
    sampleRate = in.readLittleUInt(32);
    if (sampleRate <= 0 || sampleRate >= (1 << 20)) {
        throw runtime_error("Invalid WAV file sample rate (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: WAV file sample rate = " << sampleRate << " Hz" << endl;
    bps = in.readLittleUInt(32);
    bps = bps >> 4;
    cout << "Wav2aiff::encodeFile: WAV file bits per second = " << bps << " bits" << endl;
    blockAlign = in.readLittleUInt(16);
    cout << "Wav2aiff::encodeFile: WAV file blockAlign = " << blockAlign << " bytes" << endl;
    bitsPerSample = in.readLittleUInt(16);
    if (bitsPerSample != 16 && bitsPerSample != 24 && bitsPerSample != 32) {
        throw runtime_error("Only support 16/24/32 bits per sample (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: WAV file bits per sample = " << bitsPerSample << " bits" << endl;
    if (in.readBigUInt(32) != 0x64617461) {
        throw runtime_error("Invalid WAV file data chunk header 'data' (Wav2aiff::encodeFile)");
    }
    cout << "Wav2aiff::encodeFile: valid WAV file data chunk header 'data'" << endl;
    totalSampleLength = in.readLittleUInt(32);
    cout << "Wav2aiff::encodeFile: WAV file total sample length = " << totalSampleLength << " bits" << endl;

    // FORM chunk
    cout << "Wav2aiff::encodeFile: writing into FORM chunk" << endl;
    out.writeBigInt(0x464F524D, 32);// 'FORM'
    out.writeBigInt(4 + 18 + 4 * 3 + totalSampleLength * bitsPerSample * channels / 8, 32);
    out.writeBigInt(0x41494646, 32);// 'AIFF'

    // COMM chunk
    cout << "Wav2aiff::encodeFile: writing into COMM chunk" << endl;
    out.writeBigInt(0x434F4D4D, 32);// 'COMM'
    out.writeBigInt(18, 32);
    out.writeBigInt(channels, 16);
    out.writeBigInt(totalSampleLength, 32);
    out.writeBigInt(bitsPerSample, 16);
    addSampleRate(sampleRate, out);

    // SSND chunk
    cout << "Wav2aiff::encodeFile: writing into SSND chunk" << endl;
    out.writeBigInt(0x53534E44, 32);// 'SSND'
    out.writeBigInt(totalSampleLength * bitsPerSample * channels / 8 + 8, 32);
    out.writeBigInt(0, 32);
    out.writeBigInt(0, 32);
    int temp;
    while (true) {
        try {
            temp = (int) in.readLittleUInt(bitsPerSample);
            out.writeBigInt(temp, bitsPerSample);
        } catch (runtime_error &e) {
            if (strcmp(e.what(), "Reached end of file") != 0) {
                throw e;
            }
            break;
        }
    }

    cout << "Wav2aiff::encodeFile: finished" << endl;
}
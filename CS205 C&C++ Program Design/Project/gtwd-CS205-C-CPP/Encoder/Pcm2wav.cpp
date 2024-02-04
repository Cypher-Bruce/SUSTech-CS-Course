//
// Created by Roderick Qiu on 2023/12/2.
//

#include "Pcm2wav.h"
#include <cstring>

void Pcm2wav::outputWAVFile(fileReader &in, fileWriter &out, PcmConfig config) {
    if (config.sample_rate <= 0 || config.sample_rate >= (1 << 20)) {
        throw runtime_error("Invalid PCM config sample rate (Pcm2wav::outputWAVFile)");
    }
    if (config.channels <= 0 || config.channels > 8) {
        throw runtime_error("Invalid PCM config channel count (Pcm2wav::outputWAVFile)");
    }
    if (config.depth == 0 || config.depth > 32 || config.depth % 8 != 0) {
        throw runtime_error("Unsupported PCM config sample depth (Pcm2wav::outputWAVFile)");
    }
    if (config.num_samples <= 0) {
        throw runtime_error("Invalid PCM config sample count (Pcm2wav::outputWAVFile)");
    }

    unsigned long long numChannels = config.channels;
    unsigned int sampleDepth = config.depth;
    unsigned int sampleRate = config.sample_rate;
    unsigned long long numSamples = config.num_samples;

    unsigned long long sampleDataLength = numSamples * numChannels * sampleDepth / 8;
    out.writeBigInt(0x52494646, 32); // "RIFF"
    out.writeLittleInt((int) (sampleDataLength + 36), 32); // file length
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
    out.writeLittleInt((int) sampleDataLength, 32); // data chunk size
    cout << "Pcm2wav::outputWAVFile: header writing finished" << endl;

    int temp;
    while (true) {
        try {
            temp = (int) in.readLittleUInt(8);
            out.writeLittleInt(temp, 8);
        } catch (runtime_error &e) {
            if (strcmp(e.what(), "Reached end of file") != 0) {
                throw e;
            }
            break;
        }
    }

    cout << "Pcm2wav::outputWAVFile: all finished" << endl;
}
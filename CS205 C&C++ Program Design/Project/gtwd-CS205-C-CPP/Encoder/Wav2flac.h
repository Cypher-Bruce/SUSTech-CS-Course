//
// Created by Roderick Qiu on 2023/12/2.
//

#ifndef GTWD_WAV2FLAC_H
#define GTWD_WAV2FLAC_H

#include<string>
#include<fstream>
#include<unordered_map>
#include "../Utils/Utils.h"
#include "FlacMetadata.h"
#include "MD5.h"

using namespace std;

class Wav2flac {
private:
    static void encodeSubframe(int samples[], unsigned long len, int sampleDepth, fileWriter &out);
    static void encodeFrame(fileReader &in, fileWriter &out, unsigned int frameIndex, unsigned int numChannels,
                                           unsigned int sampleDepth, unsigned int sampleRate,
                                           int blockSize, MD5& md5);
public:
    static string hello() {
        return "Hello from Wav2fLaC";
    }

    static void encodeFile(fileReader &in, fileWriter &out, FlacMetadata::MetaEditInfo metaEditInfo, double v);
};

#endif //GTWD_WAV2FLAC_H

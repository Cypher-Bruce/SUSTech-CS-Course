//
// Created by Roderick Qiu on 2023/12/2.
//

#ifndef GTWD_FLAC2WAV_H
#define GTWD_FLAC2WAV_H

#include<string>
#include<fstream>
#include"Utils.h"
#include"MD5.h"
using namespace std;

struct fileInfo{
    unsigned int minimumBlockSize;
    unsigned int maximumBlockSize;
    unsigned int numberOfChannels;
    unsigned int sampleRate;
    unsigned int bitsPerSample;
};

class Flac2wav {
    private:
        static bool decodeFrames(fileReader& in, fileWriter& out, unsigned int numChannels, unsigned int sampleDepth, MD5& md5, fileInfo info, int& exceptionCount);
        static void decodeSubFrames(fileReader& in, unsigned int sampleDepth, unsigned int channelAssignment, unsigned int numChannels, unsigned int blockSize, unsigned int* samples[]);
        static void decodeSubFrame(fileReader& in, unsigned int sampleDepth, unsigned int blockSize, long long result[]);
    public:
        static void decodeFile(fileReader& in, fileWriter& out);
};


#endif //GTWD_FLAC2WAV_H

//
// Created by Roderick Qiu on 2023/12/2.
//

#ifndef GTWD_PCM2WAV_H
#define GTWD_PCM2WAV_H

#include<string>
#include<fstream>
#include"Utils.h"
#include"MD5.h"

using namespace std;

typedef struct pcmConfig {
    int sample_rate;
    int depth;
    int channels;
    long num_samples;
} PcmConfig;

class Pcm2wav {
public:
    static void outputWAVFile(fileReader &in, fileWriter &out, PcmConfig config);
};


#endif //GTWD_PCM2WAV_H

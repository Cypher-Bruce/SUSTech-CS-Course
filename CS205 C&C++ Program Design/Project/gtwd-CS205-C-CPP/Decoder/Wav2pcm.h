//
// Created by Roderick Qiu on 2023/12/2.
//

#ifndef GTWD_WAV2PCM_H
#define GTWD_WAV2PCM_H

#include<string>
#include "Utils.h"
#include "Pcm2wav.h"

using namespace std;

class Wav2pcm {
    public:
    static void decodeFile(fileReader& in, fileWriter& out, PcmConfig& config);
};


#endif //GTWD_WAV2PCM_H

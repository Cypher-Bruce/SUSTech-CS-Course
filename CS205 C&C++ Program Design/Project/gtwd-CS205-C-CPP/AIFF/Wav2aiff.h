//
// Created by Roderick Qiu on 2023/12/8.
//

#ifndef GTWD_WAV2AIFF_H
#define GTWD_WAV2AIFF_H

#include <string>
#include <fstream>
#include <vector>
#include <unordered_map>
#include "../Utils/Utils.h"

class Wav2aiff {
public:
    static void encodeFile(fileReader &in, fileWriter &out);

    static void addSampleRate(unsigned int sampleRate, fileWriter &out);
};


#endif //GTWD_WAV2AIFF_H

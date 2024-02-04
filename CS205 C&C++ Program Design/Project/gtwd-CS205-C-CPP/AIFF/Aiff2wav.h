#ifndef TEMP_WAV_AIFF2WAV_H
#define TEMP_WAV_AIFF2WAV_H

#include "../Utils/Utils.h"
#include <vector>

using namespace std;

class Aiff2wav {
public:
    static void encodeFile(fileReader &in, fileWriter &out);

    static unsigned int getAiffSampleRate(vector<unsigned int> &fileData);

    static bool
    tenByteMatch(vector<unsigned int> &v1, int startIndex1, const vector<unsigned int> &v2, int startIndex2);
};


#endif //TEMP_WAV_AIFF2WAV_H

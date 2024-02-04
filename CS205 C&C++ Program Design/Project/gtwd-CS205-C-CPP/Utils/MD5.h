//
// Created by Cyphe on 2023/12/8.
//

#ifndef GTWD_MD5_H
#define GTWD_MD5_H

#include <iostream>
#include <vector>
#include <array>

class MD5 {
private:
    unsigned long long inputLength;
    std::vector<std::array<unsigned char, 64>> blocks;
    bool finalized;
    unsigned int MD5_result[4]{};
    static unsigned int rotateLeft(unsigned int x, unsigned int n);
    static void toBytes(unsigned int data, std::array<unsigned char, 64> &block, int offset);
    static unsigned int toInt(unsigned int data);
public:
    MD5(){
        inputLength = 0;
        finalized = false;
        for (unsigned int & i : MD5_result) {
            i = 0;
        }
        blocks.emplace_back();
    }

    void updateMD5(unsigned char data);

    void finalizeMD5();

    void printMD5();

    void getMD5(unsigned int (&data)[4]);

    bool checkMD5(const unsigned int data[]);
};


#endif //GTWD_MD5_H

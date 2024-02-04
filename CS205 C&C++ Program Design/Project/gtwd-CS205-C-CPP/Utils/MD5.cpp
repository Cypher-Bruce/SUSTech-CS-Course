//
// Created by Cyphe on 2023/12/8.
//

#include "MD5.h"
#include <iomanip>

static unsigned int S[] = {  7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
                             5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20, 5,  9, 14, 20,
                             4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
                             6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21};

static unsigned int K[] = { 0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
                            0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
                            0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
                            0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
                            0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
                            0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
                            0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
                            0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
                            0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
                            0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
                            0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
                            0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
                            0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
                            0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
                            0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
                            0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391};


void MD5::updateMD5(unsigned char data) {
    blocks[blocks.size() - 1][inputLength % 64] = data;
    inputLength++;
    if(inputLength % 64 == 0){
        blocks.emplace_back();
    }
}

void MD5::finalizeMD5() {
    unsigned long long fileSize = inputLength;
    updateMD5(0x80);

    while(inputLength % 64 != 56){
        updateMD5(0);
    }
    toBytes((unsigned int)(fileSize * 8), blocks[blocks.size() - 1], 56);
    toBytes((unsigned int)(fileSize >> 29), blocks[blocks.size() - 1], 60);

    unsigned int A = 0x67452301;
    unsigned int B = 0xefcdab89;
    unsigned int C = 0x98badcfe;
    unsigned int D = 0x10325476;

    for(auto &block : blocks){
        unsigned int AA = A;
        unsigned int BB = B;
        unsigned int CC = C;
        unsigned int DD = D;
        unsigned int m[16];
        for (int i = 0; i < 16; ++i) {
            m[i] = ((unsigned int)block[i * 4]) | (((unsigned int)block[i * 4 + 1]) << 8) | (((unsigned int)block[i * 4 + 2]) << 16) | (((unsigned int)block[i * 4 + 3]) << 24);
        }

        for(int i = 0; i < 64; ++i){
            unsigned int F, g;
            if(i < 16){
                F = (BB & CC) | ((~BB) & DD);
                g = i;
            } else if(i < 32){
                F = (DD & BB) | ((~DD) & CC);
                g = (5 * i + 1) % 16;
            } else if(i < 48){
                F = BB ^ CC ^ DD;
                g = (3 * i + 5) % 16;
            } else {
                F = CC ^ (BB | (~DD));
                g = (7 * i) % 16;
            }
            unsigned int temp = DD;
            DD = CC;
            CC = BB;
            BB = BB + rotateLeft(AA + F + K[i] + m[g], S[i]);
            AA = temp;
        }

        A += AA;
        B += BB;
        C += CC;
        D += DD;
    }

    MD5_result[0] = toInt(A);
    MD5_result[1] = toInt(B);
    MD5_result[2] = toInt(C);
    MD5_result[3] = toInt(D);

    finalized = true;
}

unsigned int MD5::rotateLeft(unsigned int x, unsigned int n) {
    return (x << n) | (x >> (32 - n));
}

void MD5::printMD5() {
    if(!finalized){
        throw std::runtime_error("MD5 not finalized (MD5::printMD5)");
    }

    for (unsigned int i : MD5_result) {
        std::cout << std::setw(8) << std::setfill('0') << std::hex << i;
    }
}

bool MD5::checkMD5(const unsigned int *data) {
    if(!finalized){
        throw std::runtime_error("MD5 not finalized (MD5::checkMD5)");
    }

    for (int i = 0; i < 4; ++i) {
        if(data[i] != MD5_result[i]){
            return false;
        }
    }
    return true;
}

void MD5::toBytes(unsigned int data, std::array<unsigned char, 64> &block, int offset) {
    for (int i = 0; i < 4; ++i) {
        block[offset + i] = data >> (i * 8);
    }
}

unsigned int MD5::toInt(const unsigned int data) {
    return ((data & 0xff) << 24) | ((data & 0xff00) << 8) | ((data & 0xff0000) >> 8) | ((data & 0xff000000) >> 24);
}

void MD5::getMD5(unsigned int (&data)[4]) {
    if(!finalized){
        throw std::runtime_error("MD5 not finalized (MD5::getMD5)");
    }

    for (int i = 0; i < 4; ++i) {
        data[i] = MD5_result[i];
    }
}



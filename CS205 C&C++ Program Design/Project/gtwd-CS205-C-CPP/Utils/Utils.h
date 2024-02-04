//
// Created by Owen on 2023/12/2.
//
#ifndef GTWD_UTILS_H
#define GTWD_UTILS_H

#include<iostream>
#include<string>

class fileReader{
private:
    std::ifstream &input;
    unsigned long long inputBuffer;
    int inputBufferLength;
    unsigned int CRC8;
    unsigned int CRC16;
public:
    explicit fileReader(std::ifstream &inStream) : input(inStream) {
        inputBuffer = 0;
        inputBufferLength = 0;
        CRC8 = 0;
        CRC16 = 0;
    }

    unsigned int readLittleUInt(int n);

    unsigned int readBigUInt(int n);

    unsigned long long readBigULongLong(int n);

    int readLittleSInt(int n);

    static std::string intToHex(int num);

    static std::string intToHex(unsigned int num);

    static std::string longLongToHex(unsigned long long num);

    static int hexToInt(const std::string &str);

    int readBigSInt(int n);

    void alignByte();

    void closeReader();

    void updateCRC8(unsigned int data);

    void updateCRC16(unsigned int data);

    bool checkCRC8();

    bool checkCRC16();

    void resetCRC8();

    void resetCRC16();
};

class fileWriter {
private:
    std::ofstream &output;
    unsigned long long outputBuffer;
    int outputBufferLength;
public:
    unsigned int CRC8;
    unsigned int CRC16;
    explicit fileWriter(std::ofstream &outStream) : output(outStream) {
        outputBuffer = 0;
        outputBufferLength = 0;
        CRC8 = 0;
        CRC16 = 0;
    }

    void writeLittleInt(unsigned int data, int n);

    void writeBigInt(unsigned int data, int n);

    void writeBigLongLong(unsigned long long data, int n);

    void alignByte();

    void closeWriter();

    void writeStr(std::string str);

    void resetCRC();

    std::ofstream & get();

    static std::string uint32ToString(unsigned int value);
};

class fileCopier {
private:
    std::ifstream &input;
    std::ofstream &output;
public:
    explicit fileCopier(std::ifstream &inStream, std::ofstream &outStream) : input(inStream), output(outStream) {}

    void copyFile();

    void closeCopier();
};

#endif //GTWD_UTILS_H

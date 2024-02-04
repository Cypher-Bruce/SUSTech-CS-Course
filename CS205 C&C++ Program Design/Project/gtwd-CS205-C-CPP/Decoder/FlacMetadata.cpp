//
// Created by Roderick Qiu on 2023/12/5.
//

#include "FlacMetadata.h"
#include "Utils.h"
#include <iostream>
#include <vector>
#include <cstring>

using namespace std;

FlacMetadata::FlacMetadataInfo FlacMetadata::interpretFile(fileReader &in) {
    if (in.readBigUInt(32) != 0x664c6143) {
        throw runtime_error("Not a flac file (Flac2wav::decodeFile)");
    }

    cout << "-----------------" << endl;
    cout << "FLAC Metadata: " << endl;
    FlacMetadataInfo info;
    vector<FlacMetadataHeader> headers;
    unsigned int maxBlockSize = -1;
    unsigned int minBlockSize = -1;
    unsigned int maxFrameSize = -1;
    unsigned int minFrameSize = -1;
    unsigned int sampleRate = -1;
    unsigned int numChannels = -1;
    unsigned int sampleDepth = -1;
    unsigned long long numSamples = -1;
    string md5[4];
    bool isLastBlock = false;
    while (!isLastBlock) {
        isLastBlock = in.readBigUInt(1);
        unsigned int blockType = in.readBigUInt(7);
        unsigned int blockSize = in.readBigUInt(24);
        FlacMetadataHeader header;
        header.blockType = blockType;
        header.blockSize = blockSize;
        header.isLast = isLastBlock;
        headers.push_back(header);
        /*
         * 0 : STREAMINFO
         * 1 : PADDING
         * 2 : APPLICATION
         * 3 : SEEKTABLE
         * 4 : VORBIS_COMMENT
         * 5 : CUESHEET
         * 6 : PICTURE
         */
        if (blockType == 0) { // streaminfo
            minBlockSize = in.readBigUInt(16);
            maxBlockSize = in.readBigUInt(16);
            minFrameSize = in.readBigUInt(24);
            maxFrameSize = in.readBigUInt(24);
            sampleRate = in.readBigUInt(20);
            numChannels = in.readBigUInt(3) + 1;
            sampleDepth = in.readBigUInt(5) + 1;
            numSamples = ((unsigned long long) in.readBigUInt(18)) << 18 | in.readBigUInt(18);
            md5[0] = fileReader::intToHex(in.readBigUInt(32));
            md5[1] = fileReader::intToHex(in.readBigUInt(32));
            md5[2] = fileReader::intToHex(in.readBigUInt(32));
            md5[3] = fileReader::intToHex(in.readBigUInt(32));
            cout << "minBlockSize: " << minBlockSize << endl;
            cout << "maxBlockSize: " << maxBlockSize << endl;
            cout << "minFrameSize: " << minFrameSize << endl;
            cout << "maxFrameSize: " << maxFrameSize << endl;
            cout << "sampleRate: " << sampleRate << endl;
            cout << "numChannels: " << numChannels << endl;
            cout << "sampleDepth: " << sampleDepth << endl;
            cout << "numSamples: " << numSamples << endl;
            cout << "md5: " << md5[0] << md5[1] << md5[2] << md5[3] << endl;
            info.maxBlockSize = maxBlockSize;
            info.minBlockSize = minBlockSize;
            info.minFrameSize = minFrameSize;
            info.maxFrameSize = maxFrameSize;
            info.sampleRate = sampleRate;
            info.numChannels = numChannels;
            info.sampleDepth = sampleDepth;
            info.numSamples = numSamples;
            info.md5[0] = md5[0];
            info.md5[1] = md5[1];
            info.md5[2] = md5[2];
            info.md5[3] = md5[3];
        } else if (blockType == 2) { // application
            info.applicationBlockSize = blockSize;
            info.applicationId = in.readBigUInt(32);
            cout << "application: " << fileWriter::uint32ToString(info.applicationId) << endl;
            for (int i = 0; i < blockSize - 4; i++) {
                info.applicationDataOriginal.push_back(in.readBigUInt(8));
            }
            string applicationData(info.applicationDataOriginal.begin(), info.applicationDataOriginal.end());
            if (applicationData.size() > 1000)
                cout << "application data: " << applicationData.substr(0, 1000)
                     << "... (too long, skip showing)" << endl;
            else
                cout << "application data: " << applicationData << endl;
        } else if (blockType == 3) { // seek table
            info.seekPointsCnt = blockSize / (8 + 8 + 2);
            cout << "seekTablesCount: " << info.seekPointsCnt << endl;
            for (int i = 0; i < info.seekPointsCnt; i++) {
                FlacSeekPoint seekPoint;
                seekPoint.sampleFirst = in.readBigULongLong(64);
                seekPoint.offset = in.readBigULongLong(64);
                seekPoint.sampleNum = in.readBigUInt(16);
                string sampleFirstHex = fileReader::longLongToHex(seekPoint.sampleFirst);
                info.seekPoints.push_back(seekPoint);
                if (sampleFirstHex != "ffffffffffffffff") {
                    cout << "seekPoint " << i << ": "
                         << sampleFirstHex << ", "
                         << fileReader::longLongToHex(seekPoint.offset) << ", "
                         << seekPoint.sampleNum << endl;
                }
            }
        } else if (blockType == 4) { // vorbis comment
            // Note that the 32-bit field lengths are little-endian coded according to the vorbis spec
            // as opposed to the usual big-endian coding of fixed-length integers in the rest of FLAC.
            info.commentBlockSize = blockSize;
            unsigned int vendorLength = in.readLittleUInt(32);
            vector<unsigned int> vendor;
            vendor.reserve(vendorLength);
            for (int i = 0; i < vendorLength; ++i) {
                vendor.push_back(in.readLittleUInt(8));
            }
            string vendorString(vendor.begin(), vendor.end());
            cout << "vendor: " << vendorString << endl;
            info.vendorString = vendorString;
            info.vendorStringOriginal = vendor;
            unsigned int commentListLength = in.readLittleUInt(32);
            cout << "commentListLength: " << commentListLength << endl;
            info.commentListLength = commentListLength;
            for (int i = 0; i < commentListLength; ++i) {
                unsigned int commentLength = in.readLittleUInt(32);
                vector<unsigned int> comment;
                comment.reserve(commentLength);
                for (int j = 0; j < commentLength; ++j) {
                    comment.push_back(in.readLittleUInt(8));
                }
                string commentString(comment.begin(), comment.end());
                cout << "comment " << i << ": " << commentString << endl;
                info.commentList.push_back(commentString);
                info.commentsOriginal.push_back(comment);
            }
        } else {
            for (int i = 0; i < blockSize; ++i) {
                in.readBigUInt(8);
            }
        }
    }
    info.headers = headers;
    return info;
}

void FlacMetadata::editFile(fileReader &in, fileWriter &out, MetaEditInfo meta) {
    FlacMetadataInfo info = interpretFile(in);
    cout << "-----------------" << endl;
    cout << "Flac metadata edit into: " << endl;

    if (meta.modifyVendorString) {
        vector<unsigned int> originVector(info.vendorString.begin(), info.vendorString.end());
        info.vendorString = meta.newVendorString;
        vector<unsigned int> myVector(info.vendorString.begin(), info.vendorString.end());
        info.vendorStringOriginal = myVector;
        meta.alterSize += (myVector.size() - originVector.size());
        cout << "Modifying vendor string info: " << meta.newVendorString << endl;
    }
    if (meta.modifyComment) {
        if (meta.modifyCommentIndex >= info.commentListLength) {
            throw runtime_error("Comment index out of range (Flac2wav::editFile)");
        }
        info.commentList[meta.modifyCommentIndex] = meta.modifiedComment;
        vector<unsigned int> myVector(meta.modifiedComment.begin(), meta.modifiedComment.end());
        meta.alterSize += (myVector.size() - info.commentsOriginal[meta.modifyCommentIndex].size());
        info.commentsOriginal[meta.modifyCommentIndex] = myVector;
        cout << "Modifying comment info: " << meta.modifiedComment << ", at: " << meta.modifyCommentIndex << endl;
    }
    if (meta.appendComment) {
        info.commentListLength++;
        for (int i = 0; i < meta.newComments.size(); i++) {
            info.commentList.push_back(meta.newComments[i]);
            vector<unsigned int> myVector(meta.newComments[i].begin(), meta.newComments[i].end());
            info.commentsOriginal.push_back(myVector);
            meta.alterSize += myVector.size();
            cout << "Appending comment info: " << meta.newComments[i] << endl;
        }
    }
    if (meta.removeComment) {
        if (meta.removeCommentIndex >= info.commentListLength) {
            throw runtime_error("Comment index out of range (Flac2wav::editFile)");
        }
        meta.alterSize -= info.commentsOriginal[meta.removeCommentIndex].size();
        info.commentList.erase(info.commentList.begin() + meta.removeCommentIndex);
        info.commentsOriginal.erase(info.commentsOriginal.begin() + meta.removeCommentIndex);
        info.commentListLength--;
        cout << "Removing comment info at: " << meta.removeCommentIndex << endl;
    }

    //then, copy all the data from the input file to the output file
    out.writeBigInt(0x664c6143, 32);
    int lastAlterSize = 0;
    for (int h = 0; h < info.headers.size(); h++) {
        FlacMetadataHeader cur = info.headers[h];
        out.writeBigInt(cur.isLast, 1);
        out.writeBigInt(cur.blockType, 7);
        switch (cur.blockType) {
            case 0: // stream info block
                cout << "Writing stream info block..." << endl;
                out.writeBigInt(cur.blockSize, 24);
                out.writeBigInt((int) info.minBlockSize, 16);
                out.writeBigInt((int) info.maxBlockSize, 16);
                out.writeBigInt((int) info.minFrameSize, 24);
                out.writeBigInt((int) info.maxFrameSize, 24);
                out.writeBigInt((int) info.sampleRate, 20);
                out.writeBigInt((int) info.numChannels - 1, 3);
                out.writeBigInt((int) info.sampleDepth - 1, 5);
                out.writeBigInt((int) info.numSamples >> 18, 18);
                out.writeBigInt((int) (info.numSamples & 0x3FFFF), 18);
                for (const auto &i: info.md5) {
                    out.writeBigInt(fileReader::hexToInt(i), 32);
                }
                lastAlterSize = 0;
                break;
            case 1: // padding block
                cout << "Filling padding block..." << endl;
                int blockSize;
                if (lastAlterSize <= 0)
                    blockSize = (int) cur.blockSize;
                else
                    blockSize = (int) cur.blockSize - lastAlterSize;
                for (int i = 0; i < blockSize; ++i) {
                    out.writeBigInt(0, 8);
                }
                break;
            case 2: // application block
                cout << "Writing application block..." << endl;
                out.writeBigInt((int) info.applicationBlockSize, 24);
                out.writeBigInt((int) info.applicationId, 32);
                for (int i: info.applicationDataOriginal) {
                    out.writeBigInt(i, 8);
                }
                lastAlterSize = 0;
                break;
            case 3: // seektable block
                cout << "Writing seek table block..." << endl;
                out.writeBigInt((int) (info.seekPointsCnt * (8 + 8 + 2)), 24);
                for (int i = 0; i < info.seekPointsCnt; i++) {
                    out.writeBigLongLong(info.seekPoints[i].sampleFirst, 64);
                    out.writeBigLongLong(info.seekPoints[i].offset, 64);
                    out.writeBigInt(info.seekPoints[i].sampleNum, 16);
                }
                lastAlterSize = 0;
                break;
            case 4: // comment block
                cout << "Writing vorbis comment block..." << endl;
                out.writeBigInt((int) info.commentBlockSize + meta.alterSize, 24);
                // little-endian only appears in vorbis comment
                out.writeLittleInt((int) info.vendorString.length(), 32);
                for (char i: info.vendorStringOriginal) {
                    out.writeLittleInt((int) i, 8);
                }
                out.writeLittleInt((int) info.commentListLength, 32);
                for (int i = 0; i < info.commentListLength; ++i) {
                    out.writeLittleInt((int) info.commentList[i].length(), 32);
                    for (unsigned int j: info.commentsOriginal[i]) {
                        out.writeLittleInt(j, 8);
                    }
                }
                lastAlterSize = meta.alterSize;
                break;
            default: // other blocks
                lastAlterSize = 0;
                break;
        }

    }

    int temp;
    while (true) {
        try {
            temp = (int) in.readBigUInt(8);
            out.writeBigInt(temp, 8);
        } catch (runtime_error &e) {
            if (strcmp(e.what(), "Reached end of file") != 0) {
                throw e;
            }
            break;
        }
    }
}
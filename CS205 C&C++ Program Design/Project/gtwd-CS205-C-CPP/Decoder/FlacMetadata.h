//
// Created by Roderick Qiu on 2023/12/5.
//

#ifndef GTWD_FLACMETADATA_H
#define GTWD_FLACMETADATA_H

#include <string>
#include <vector>
#include "Utils.h"

using namespace std;

class FlacMetadata {
public:
    typedef struct metadataHeader {
        unsigned int isLast = 0;
        unsigned int blockType = -1;
        unsigned int blockSize = -1;
    } FlacMetadataHeader;

    typedef struct seekTable {
        unsigned long long sampleFirst;
        unsigned long long offset;
        unsigned int sampleNum;
    } FlacSeekPoint;

    typedef struct metadataFlac {
        vector<FlacMetadataHeader> headers;

        // stream info
        unsigned int maxBlockSize = -1;
        unsigned int minBlockSize = -1;
        unsigned int maxFrameSize = -1;
        unsigned int minFrameSize = -1;
        unsigned int sampleRate = -1;
        unsigned int numChannels = -1;
        unsigned int sampleDepth = -1;
        unsigned long long numSamples = -1;
        string md5[4];

        // vorbis comment
        unsigned int commentBlockSize = 0;
        string vendorString;
        vector<unsigned int> vendorStringOriginal;
        unsigned int commentListLength = 0;
        vector<string> commentList;
        vector<vector<unsigned int>> commentsOriginal;

        //application
        unsigned int applicationBlockSize = 0;
        unsigned int applicationId = 0;
        vector<unsigned int> applicationDataOriginal;

        //seek table
        unsigned int seekPointsCnt = 0;
        vector<FlacSeekPoint> seekPoints;
    } FlacMetadataInfo;

    typedef struct metaEditInfo {
        int alterSize = 0;
        bool modifyVendorString = false;
        string newVendorString;
        bool modifyComment = false;
        int modifyCommentIndex = -1;
        string modifiedComment;
        vector<string> newComments;
        bool appendComment = false;
        bool removeComment = false;
        int removeCommentIndex = -1;
    } MetaEditInfo;

    static FlacMetadata::FlacMetadataInfo interpretFile(fileReader &in);

    static void editFile(fileReader &in, fileWriter &out, FlacMetadata::MetaEditInfo editInfo);
};


#endif //GTWD_FLACMETADATA_H
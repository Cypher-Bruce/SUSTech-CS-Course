#include <iostream>
#include <chrono>
#include "Pcm2wav.h"
#include "Wav2flac.h"
#include "Flac2wav.h"
#include "Wav2pcm.h"
#include "Wav2aiff.h"
#include "Aiff2wav.h"
#include "FlacMetadata.h"
#include "clipp.h"
#include "SimpleIni.h"

using namespace std;
using namespace clipp;

string parseMode(const string &mode);

string generateRandomString(int length);

char *generateTempFile(char *tmpname, const string &tempFolder);

vector<string> strSplit(const string &text, char sep);

PcmConfig parseConfig(const string &config);

void outputConfig(const PcmConfig &pcmConfig, const string &output);

FlacMetadata::MetaEditInfo
getMetadataInfo(const string &modifyVendor, const string &modifyComment, const string &modifyCommentIndex,
                const string &appendComment, const string &removeCommentIndex);

int main(int argc, char **argv) {
    string mode, input, output, config;
    string modifyVendor, modifyComment, modifyCommentIndex, appendComment, removeCommentIndex, tempFolder;
    double v = 1;
    auto cli = (option("-m", "-M", "--mode") & value("mode", mode),
            option("-i", "-I", "--input") & value("input", input),
            option("-o", "-O", "--output") & value("output", output),
            option("-c", "-C", "--config") & value("config", config),
            option("-mv", "--modify-vendor") & value("modifyVendor", modifyVendor),
            option("-mc", "--modify-comment") & value("modifyComment", modifyComment)
            & value("commentIndex", modifyCommentIndex),
            option("-ac", "--append-comment") & value("appendComment", appendComment),
            option("-rc", "--remove-comment") & value("removeComment", removeCommentIndex),
            option("-t", "-T", "--temp") & value("temp", tempFolder),
            option("-v", "-V", "--velocity") & value("velocity", v)
    );
    if (parse(argc, const_cast<char **>(argv), cli)) {
        cout << "Mode: " << parseMode(mode) << endl;
        if (!input.empty())
            cout << "Input: " << input << endl;
        if (!output.empty())
            cout << "Output: " << output << endl;
        if (mode == "f2w" || mode == "w2f" || mode == "w2a" || mode == "a2w" || mode == "r2w" ||
            mode == "w2r") {// 1-step
            PcmConfig pcmConfig;
            if (mode == "r2w") //if we need to read config file (raw)
                pcmConfig = parseConfig(config);
            char tmpname[FILENAME_MAX];
            generateTempFile(tmpname, tempFolder);
            ifstream inputFile(input, ios::in | ios::binary);
            ofstream tempOutputFile(tmpname, ios::out | ios::trunc | ios::binary);
            try {
                if (!inputFile.is_open()) {
                    throw runtime_error("Error opening input file (main::main)");
                }
                if (!tempOutputFile.is_open()) {
                    throw runtime_error("Error opening temp output file (main::main)");
                }
                fileReader reader(inputFile);
                fileWriter writer(tempOutputFile);
                if (mode == "f2w")
                    Flac2wav::decodeFile(reader, writer);
                else if (mode == "w2f") {
                    FlacMetadata::MetaEditInfo metaEditInfo = getMetadataInfo(modifyVendor, modifyComment,
                                                                              modifyCommentIndex,
                                                                              appendComment, removeCommentIndex);
                    Wav2flac::encodeFile(reader, writer, metaEditInfo, 1 / v);
                } else if (mode == "w2a")
                    Wav2aiff::encodeFile(reader, writer);
                else if (mode == "a2w")
                    Aiff2wav::encodeFile(reader, writer);
                else if (mode == "r2w")
                    Pcm2wav::outputWAVFile(reader, writer, pcmConfig);
                else if (mode == "w2r") {
                    Wav2pcm::decodeFile(reader, writer, pcmConfig);
                    outputConfig(pcmConfig, output);
                }
                reader.closeReader();
                writer.closeWriter();
                ifstream tempInputFile(tmpname, ios::in | ios::binary);
                ofstream outputFile(output, ios::out | ios::trunc | ios::binary);
                if (!tempInputFile.is_open()) {
                    throw runtime_error("Error opening temp input file (main::main)");
                }
                if (!outputFile.is_open()) {
                    throw runtime_error("Error opening output file (main::main)");
                }
                fileCopier copier(tempInputFile, outputFile);
                copier.copyFile();
                copier.closeCopier();
            } catch (exception &e) {
                remove(tmpname);
                throw runtime_error(e.what());
            }
            remove(tmpname);
        } else if (mode == "f2r" || mode == "r2f" || mode == "a2f" || mode == "f2a" || mode == "r2a" ||
                   mode == "a2r") { // 2-steps
            PcmConfig pcmConfig;
            if (mode == "r2f" || mode == "r2a") //if we need to read config file (raw)
                pcmConfig = parseConfig(config);

            // step 1/2
            char tmpname1[FILENAME_MAX];
            generateTempFile(tmpname1, tempFolder);
            ifstream inputFile(input, ios::in | ios::binary);
            ofstream tempOutputFile1(tmpname1, ios::out | ios::trunc | ios::binary);
            try {
                if (!inputFile.is_open()) {
                    throw runtime_error("Error opening input file (main::main)");
                }
                if (!tempOutputFile1.is_open()) {
                    throw runtime_error("Error opening temp output file (main::main)");
                }
                fileReader reader(inputFile);
                fileWriter writer(tempOutputFile1);
                if (mode == "r2f" || mode == "r2a") {
                    Pcm2wav::outputWAVFile(reader, writer, pcmConfig);
                } else if (mode == "f2r" || mode == "f2a") {
                    Flac2wav::decodeFile(reader, writer);
                } else if (mode == "a2r" || mode == "a2f") {
                    Aiff2wav::encodeFile(reader, writer);
                }
                reader.closeReader();
                writer.closeWriter();
            } catch (exception &e) {
                remove(tmpname1);
                throw runtime_error(e.what());
            }

            // step 2/2
            char tmpname2[FILENAME_MAX];
            generateTempFile(tmpname2, tempFolder);
            ifstream inputFile2(tmpname1, ios::in | ios::binary);
            ofstream tempOutputFile2(tmpname2, ios::out | ios::trunc | ios::binary);
            try {
                if (!inputFile2.is_open()) {
                    throw runtime_error("Error opening input file (main::main)");
                }
                if (!tempOutputFile2.is_open()) {
                    throw runtime_error("Error opening temp output file (main::main)");
                }
                fileReader reader(inputFile2);
                fileWriter writer(tempOutputFile2);
                if (mode == "r2f" || mode == "a2f") {
                    FlacMetadata::MetaEditInfo metaEditInfo = getMetadataInfo(modifyVendor, modifyComment,
                                                                              modifyCommentIndex, appendComment,
                                                                              removeCommentIndex);
                    Wav2flac::encodeFile(reader, writer, metaEditInfo, v);
                } else if (mode == "r2a" || mode == "f2a") {
                    Wav2aiff::encodeFile(reader, writer);
                } else if (mode == "a2r" || mode == "f2r") {
                    Wav2pcm::decodeFile(reader, writer, pcmConfig);
                    outputConfig(pcmConfig, output);
                }
                reader.closeReader();
                writer.closeWriter();
                ifstream tempInputFile(tmpname2, ios::in | ios::binary);
                ofstream outputFile(output, ios::out | ios::trunc | ios::binary);
                if (!tempInputFile.is_open()) {
                    throw runtime_error("Error opening temp input file (main::main)");
                }
                if (!outputFile.is_open()) {
                    throw runtime_error("Error opening output file (main::main)");
                }
                fileCopier copier(tempInputFile, outputFile);
                copier.copyFile();
                copier.closeCopier();
            } catch (exception &e) {
                remove(tmpname2);
                throw runtime_error(e.what());
            }
            remove(tmpname1);
            remove(tmpname2);
        } else if (mode == "fm") {
            ifstream inputFile(input, ios::in | ios::binary);
            if (inputFile.is_open()) {
                fileReader inStream = fileReader(inputFile);
                FlacMetadata::interpretFile(inStream);
                inputFile.close();
            } else {
                throw runtime_error("Error opening input file (main::main)");
            }
        } else if (mode == "fe") {
            ifstream inputFile(input, ios::in | ios::binary);
            ofstream outputFile(output, ios::out | ios::trunc | ios::binary);
            if (!inputFile.is_open()) {
                throw runtime_error("Error opening input file (main::main)");
            }
            if (!outputFile.is_open()) {
                throw runtime_error("Error opening output file (main::main)");
            }

            FlacMetadata::MetaEditInfo metaEditInfo = getMetadataInfo(modifyVendor, modifyComment, modifyCommentIndex,
                                                                      appendComment, removeCommentIndex);

            fileReader reader(inputFile);
            fileWriter writer(outputFile);
            try {
                FlacMetadata::editFile(reader, writer, metaEditInfo);
            } catch (exception &e) {
                cout << e.what() << endl;
            }
            reader.closeReader();
        } else {
            // Invalid mode
            return 1;
        }
    }
    return 0;
}

FlacMetadata::MetaEditInfo
getMetadataInfo(const string &modifyVendor, const string &modifyComment, const string &modifyCommentIndex,
                const string &appendComment, const string &removeCommentIndex) {
    FlacMetadata::MetaEditInfo metaEditInfo;
    if (!modifyVendor.empty()) {
        metaEditInfo.newVendorString = modifyVendor;
        metaEditInfo.modifyVendorString = true;
    }
    if (!modifyComment.empty()) {
        metaEditInfo.modifiedComment = modifyComment;
        metaEditInfo.modifyComment = true;
        if (!modifyCommentIndex.empty()) {
            metaEditInfo.modifyCommentIndex = stoi(modifyCommentIndex);
        } else {
            throw runtime_error("Error acquiring comment index for modifying (main::main)");
        }
    }
    if (!appendComment.empty()) {
        metaEditInfo.newComments = strSplit(appendComment, ';');
        metaEditInfo.appendComment = true;
    }
    if (!removeCommentIndex.empty()) {
        metaEditInfo.removeComment = true;
        if (!removeCommentIndex.empty()) {
            metaEditInfo.removeCommentIndex = stoi(removeCommentIndex);
        } else {
            throw runtime_error("Error acquiring comment index for removing (main::main)");
        }
    }
    return metaEditInfo;
}

PcmConfig parseConfig(const string &config) {
    PcmConfig pcmConfig;
    CSimpleIniA ini;
    ini.SetUnicode();
    SI_Error rc = ini.LoadFile(config.c_str());
    if (rc < 0) {
        throw runtime_error("Error loading config file");
    } else {
        pcmConfig.channels = (int) ini.GetLongValue("STREAM INFO", "channels");
        pcmConfig.depth = (int) ini.GetLongValue("STREAM INFO", "depth");
        pcmConfig.sample_rate = (int) ini.GetLongValue("STREAM INFO", "sample_rate");
        pcmConfig.num_samples = ini.GetLongValue("STREAM INFO", "num_samples");
    }
    cout << "channel: " << pcmConfig.channels << endl;
    cout << "depth: " << pcmConfig.depth << endl;
    cout << "sampleRate: " << pcmConfig.sample_rate << endl;
    cout << "sampleNum: " << pcmConfig.num_samples << endl;
    return pcmConfig;
}

char *generateTempFile(char *tmpname, const string &tempFolder) {
    char *tev;
    if (tempFolder.empty()) {
        tev = getenv("TMPDIR");
        if (!tev)
            tev = getenv("TEMP");
        if (!tev)
            tev = getenv("TMP");
    } else {
        // declare own temp folder
        tev = (char *) tempFolder.c_str();
    }
    if (!tev) {
        throw runtime_error(
                "Error getting temp folder from environment variables, please manually declare using -t (main::main)");
    }
    strcpy(tmpname, tev);
#ifdef WIN32
    strcat(tmpname, "\\");
            strcat(tmpname, generateRandomString(7).c_str());
#else
    strcat(tmpname, "XXXXXXX");
#endif
    int fd = mkstemp(tmpname);
//    if (fd < 0) {
//        throw runtime_error("Error creating temp file (main::main)");
//    }
    cout << "Temp file: " << tmpname << endl;
    return tmpname;
}

void outputConfig(const PcmConfig &pcmConfig, const string &output) {
    CSimpleIniA ini;
    ini.SetUnicode();
    ini.SetLongValue("STREAM INFO", "sample_rate", pcmConfig.sample_rate);
    ini.SetLongValue("STREAM INFO", "depth", pcmConfig.depth);
    ini.SetLongValue("STREAM INFO", "channels", pcmConfig.channels);
    ini.SetLongValue("STREAM INFO", "num_samples", pcmConfig.num_samples);
    ini.SaveFile((output.substr(0, output.length() - 4) + ".ini").c_str());
}

vector<string> strSplit(const string &text, char sep) {
    vector<string> tokens;
    string token;
    istringstream tokenStream(text);

    while (getline(tokenStream, token, sep)) {
        tokens.push_back(token);
    }

    return tokens;
}

string generateRandomString(int length) {
    srand(static_cast<unsigned int>(std::time(nullptr)));
    const string charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    string result;
    for (int i = 0; i < length; ++i) {
        result += charset[rand() % charset.size()];
    }
    return result;
}

string parseMode(const string &mode) {
    if (mode == "w2f") {
        return "wav to flac";
    } else if (mode == "f2w") {
        return "flac to wav";
    } else if (mode == "f2r") {
        return "flac to raw";
    } else if (mode == "r2f") {
        return "raw to flac";
    } else if (mode == "r2w") {
        return "raw to wav";
    } else if (mode == "w2r") {
        return "wav to raw";
    } else if (mode == "a2w") {
        return "aiff to wav";
    } else if (mode == "w2a") {
        return "wav to aiff";
    } else if (mode == "f2a") {
        return "flac to aiff";
    } else if (mode == "a2f") {
        return "aiff to flac";
    } else if (mode == "a2r") {
        return "aiff to raw";
    } else if (mode == "r2a") {
        return "raw to aiff";
    } else if (mode == "fm") {
        return "flac metadata";
    } else if (mode == "fe") {
        return "flac metadata edit";
    }
    return "invalid mode";
}
cmake_minimum_required(VERSION 3.16.3)
project(gtwd)

set(CMAKE_CXX_STANDARD 14)
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address -g")

aux_source_directory(./Decoder Decoder_SOURCES)
aux_source_directory(./Encoder Encoder_SOURCES)
aux_source_directory(./AIFF AIFF_SOURCES)
aux_source_directory(./Utils Utils_SOURCES)
aux_source_directory(./Libraries Libraries_SOURCES)

include_directories(Encoder)
include_directories(Decoder)
include_directories(Utils)
include_directories(Libraries)
include_directories(AIFF)


add_executable(gtwd
        main.cpp
        ${Decoder_SOURCES}
        ${Encoder_SOURCES}
        ${AIFF_SOURCES}
        ${Utils_SOURCES}
        ${Libraries_SOURCES})

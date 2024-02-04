cmake_minimum_required(VERSION 3.10)

project(main)

aux_source_directory(. DIR_SRCS)

add_executable(main ${DIR_SRCS})
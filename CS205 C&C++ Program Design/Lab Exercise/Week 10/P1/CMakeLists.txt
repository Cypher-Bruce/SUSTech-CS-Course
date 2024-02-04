# Set minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Set project name
project(main)

aux_source_directory(. DIR_SRCS)

include_directories(include)

add_subdirectory(liba)
add_subdirectory(libs)

add_executable(main ${DIR_SRCS})

target_link_libraries(main liba libs)
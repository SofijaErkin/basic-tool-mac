cmake_minimum_required(VERSION 2.8) # CMake Versiona Check
project(theFitBody)                 # Create project "theFitBody"
set(CMAKE_CXX_STANDARD 11)          # Enable C++11 standard
# Can manually add the source file using the set command as follows:
# (Add main function file of project root directory as source file)
set(SOURCE_FILES thefitbody.cpp)
# Add excutable target with source files listed in SOURCE_FILES variable
add_executable(theFitBody ${SOURCE_FILES})



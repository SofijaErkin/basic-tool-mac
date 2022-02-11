cmake_minimum_required(VERSION 2.8) 
# Specifies the minimum required version of CMake

project(theFitBody)                 
# Defines the project name according to what we provied during project creation

set(CMAKE_CXX_STANDARD 11)          
# Sets the CMAKE_CXX_STANDARD variable to the value of 11, as we selected 
# when creating the project

# include_directories(inc)
# include_directories(${CMAKE_CURRENT_LIST_DIR}/inc)
# Adds the headers either to all the targets or to some specificones.

set(SOURCE_FILES thefitbody.cpp)
# Add thefitbody.cpp file of project root directory as source file
# Can manually add the source file using the set command as follows:
# (Add source files of project root directory as source file)

add_executable(theFitBody ${SOURCE_FILES})
# Adds theFitBody excutable target which will be build from "${SOURCE_FILES}"

# REferences: 
# CMakeLists.txt | CLion - JetBrains
# https://www.jetbrains.com/help/clion/cmakelists-txt-file.html
# Quick CMake tutorial | CLion - JetBrains
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html
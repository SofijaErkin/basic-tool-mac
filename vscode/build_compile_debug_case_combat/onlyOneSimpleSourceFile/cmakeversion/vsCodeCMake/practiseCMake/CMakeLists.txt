# Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
cmake_minimum_required(VERSION 3.0.0)
project(HelloWorld VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(include)

set(SOURCES Pet.cpp main.cpp)

include(CTest)
enable_testing()

add_executable(HelloWorld ${SOURCES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

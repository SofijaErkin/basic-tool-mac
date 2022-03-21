# Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
cmake_minimum_required(VERSION 3.0.0)
project(cat_Pet VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED True)

include_directories(${CMAKE_CURRENT_LIST_DIR}/include) # Notice: have changed!

set(SOURCES catPet.cpp source/Pet.cpp) # Notice: have changed!

include(CTest)
enable_testing()

add_executable(catPet ${SOURCES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)



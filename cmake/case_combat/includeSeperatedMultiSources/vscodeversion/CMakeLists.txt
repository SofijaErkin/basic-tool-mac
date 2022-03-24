# Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
# Reference: https://stackoverflow.com/a/68360488/10846570
cmake_minimum_required(VERSION 3.0.0...3.22 FATAL_ERROR)
# CMake Minimum Required Version :

project(banks_simulator_plus
  VERSION
    0.1.0
  DESCRIPTION
    "A project to compile BankSimulatorPlus using CMake in VSCode"
  LANGUAGES
    CXX)

set(CMAKE_CXX_STANDARD 11)
message(WARNING CMAKE_CXX_STANDARD="${CMAKE_CXX_STANDARD}")
# set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_EXTENSIONS OFF)
message(WARNING CMAKE_CXX_EXTENSIONS="${CMAKE_CXX_EXTENSIONS}")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
message(WARNING CMAKE_CXX_STANDARD_REQUIRED="${CMAKE_CXX_STANDARD_REQUIRED}")

include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY
  ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
message(WARNING CMAKE_ARCHIVE_OUTPUT_DIRECTORY="${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
  ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
message(WARNING CMAKE_LIBRARY_OUTPUT_DIRECTORY="${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
  ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})
message(WARNING CMAKE_RUNTIME_OUTPUT_DIRECTORY="${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
# Notice: this three command need to be changed for mac!
# Control where the static and shared libraries are built so that on windows,
# we don't need to tinker with the path to run the executable.

# include_directories(${CMAKE_CURRENT_LIST_DIR}/common/include/*.h) # Notice: have changed!
# Bring the headers, such as bank.h into the project
include_directories(${CMAKE_CURRENT_LIST_DIR}/include/*.h) # Have changed!

# Can manually add the sources using the set command as follows:
# set(SOURCES src/bank.cpp src/main.cpp)
# aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/src sources_path)
# set(SOURCES apps/main.cpp common/source/Pet.cpp) # Notice: have changed!

# Add all the file in directory
# aux_source_directory(src SOURCES)

# However, the file(GLOB...) allows for wildcard additions:
# file(GLOB SOURCES "src/*.cpp")
file(GLOB SOURCES "apps/*.cpp") # Have changed!

include(CTest)
enable_testing()

# add_exectable(Bank ${SOURCES})
# add_executable(${PROJECT_NAME} ${source_path})
# add_executable(BankSimulation ${SOURCES})
add_executable(banks_simulator_plus_main ${SOURCES}) # Have changed!

# the default editor
set(CMAKE_CXX_COMPILER "g++")
message(WARNING CMAKE_CXX_COMPILER="${CMAKE_CXX_COMPILER}")

# Open the message of debug
set(CMAKE_BUILD_TYPE "Debug")
message(WARNING CMAKE_BUILD_TYPE="${CMAKE_BUILD_TYPE}")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
message(WARNING CMAKE_CXX_FLAGS_DEBUG="${CMAKE_CXX_FLAGS_DEBUG}")
# set(CAMKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# Open all the
# set(CMAKE_CXX_FLAGS "-Wall")

# That make clang++ support C++11
set(CMAKE_CXX_FLAGS "-std=c++0x -stdlib=libc++ -g3 -Wall -O0")
message(WARNING CMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS}")

# The Target linked library

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

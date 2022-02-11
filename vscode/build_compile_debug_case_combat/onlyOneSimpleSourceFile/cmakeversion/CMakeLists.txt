# Upper, lower, and mixed case commands are supported by CMake. 
#may see: https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#step-1-a-basic-starting-point
cmake_minimum_required(VERSION 2.8) 
# Specifies the minimum required version of CMake.

# project(theFitBody)     
project(theFitBody VERSION 1.0)                 
# Defines the project name and the version according to what we provied during
# project creation.
# Project version step 1.

configure_file(thefitbodyConfig.h.in thefitbodyConfig.h)
# Configure a header file to pass the version number to the source code.
# Project version step 2.

set(CMAKE_CXX_STANDARD 11)          
# Sets the CMAKE_CXX_STANDARD variable to the value of 11, as we selected 
# when creating the project.
set(CMAKE_CXX_STANDARD_REQUIRED True)
# Specify he C++ standard
# Adds CMAKE_CXX_STANDARD declarations above the call to add_executable.

# include_directories(inc)
# include_directories(${CMAKE_CURRENT_LIST_DIR}/inc)
# Adds the headers either to all the targets or to some specificones.

set(SOURCE_FILES thefitbody.cpp)
# Add thefitbody.cpp file of project root directory as source file.
# Can manually add the source file using the set command as follows:
# (Add source files of project root directory as source file)

add_executable(theFitBody ${SOURCE_FILES})
# Adds theFitBody excutable target which will be build from "${SOURCE_FILES}".

# include_directories(inc/github)
# Add additional headers located n separate directories.

# add_library(test_library STATIC cal.cpp)
# Adds library target. e.g: create a static library "test_library: from cal.cpp 
# source file.
# Library target "test_library" build from libtest_library.a file under the 
# cmake-build-debug folder. 
# may see:
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#lib-targets


# Link Static Library
# find_library(TEST_LIBRARY test_library lib)
# Provides the full path, or Create a lib directory under the project root 
# and copy libtest_library.a from its default location (cmake-build-debug) to 
# this folder.
# target_link_libraries(theFitBody LINK_PUBLIC ${TEST_LIBRARY})
# Pass directly via ${TEST_LIBRARY} variable.
# Make sure o place target_link_libraries after the add_execuable command.

target_include_directories(theFitBody PUBLIC "${PROJECT_BINARY_DIR}")
# Adds that directory to the list of paths to search for include files. 
# Project version step 3.

# Link Dynamic Library
# To avoid the root CMakeLists.txt too difficult to maintian as our project 
# gets more complicated, and to build a transparent project structure,
# extract the dynamic tests into a subproject
# Transparent project structure just like this: 
# theFitBody
# |
# | __.vscode
# |    |
# |    |__c_cpp_properties.json
# |    |__launch.json
# |    |__settings.json
# |    |__tasks.json
# |
# | __CMakeLists.txt
# |
# | __test
# |    |
# |    |__CMakeLists.txt
# |    |__test.cpp
# |    
# |__thefitbody.cpp
#
# Just use Boost.Test framework for example.
# Inserted this code to CMakeLists.txt under ./theFitBody/test:
# set(Boost_USE_STATIC_LIBS OFF) 
# #enable dynamic linking
# find_package(Boost REQUIRED COMPONENTS unit_test_framework)
# # search for unit_test_framework
# 
# include_directories(${Boost_INCLUDE_DIR})
#
# add_executable(cmake_testapp_boost tests.cpp)
# # create a cmake_testapp_boost target from test.cpp
# 
# target_link_libraries(cmake_testapp_boost ${Boost_LIBRARIES})
# # link Boost libraries to the new target
#
# target_link_libraries(cmake_testapp_boost test_library)
# # link Boost with code library
#
# add_subdirectory(test)
# Make subproject test target cmake_testapp_boost available for the main build.
# Place he add_subdirectory(test) command in the rootCMakeLists.txt.

# CTest: a framework for compiling and running tests as part of the CMake build 
# process.
# may see: https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#ctest

# Separated Multiple directories CMakeLists.txt may see:
# https://cmake.org/examples/


# REferences: 
# CMakeLists.txt | CLion - JetBrains
# https://www.jetbrains.com/help/clion/cmakelists-txt-file.html
# Quick CMake tutorial | CLion - JetBrains
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html
# CMake Tutorial
# https://cmake.org/cmake/help/latest/guide/tutorial/index.html#cmake-tutorial
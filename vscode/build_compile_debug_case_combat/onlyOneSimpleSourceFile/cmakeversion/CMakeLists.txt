# Upper, lower, and mixed case commands are supported by CMake. 
#may see: https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#step-1-a-basic-starting-point
cmake_minimum_required(VERSION 2.8) 
# Specifies the minimum required version of CMake.

# project(theFitBody)     
project(theFitBody VERSION 1.0)                 
# Defines the project name and the version according to what we provied during
# project creation.
# Project version step p-v-5-1-CMakeLists.txt.

# option(USE_TEST "Use theFitBody provided dynamic library implementation" ON)
# Makes the Dynamic/Static Library optional. Large projects this s a common
# occurrence.
# Optional Library step o-7-1-CMakeLists.txt.

configure_file(thefitbodyConfig.h.in thefitbodyConfig.h)
# Configure a header file to pass the version number to the source code.
# Project version step p-v-5-2-CMakeLists.txt.

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

# Optional Library step o-7-2-CMakeLists.txt.
# if(USE_TEST)
#   add_subdirectory(test)
#  list(APPEND EXTRA_LIBS test)
#  list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/test")
# endif(~USE_TEST)
#   add_subdirectory(~test)
#   ...
# Optional Library step o-7-2-CMakeLists.txt.

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
# 
# target_link_libraries(theFitBody PUBLIC ${EXTRA_LIBS})
# Optional Library step o-7-3-CMakeLists.txt.
# Make sure o place target_link_libraries after the add_execuable command.

target_include_directories(theFitBody PUBLIC "${PROJECT_BINARY_DIR}")
# Adds that directory to the list of paths to search for include files. 
# Project version step p-v-5-3-thefitbody.cpp.


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
# |    |__test.h
# |    
# |__thefitbody.cpp
#
# Just use Boost.Test framework for example.
# Inserted this code to CMakeLists.txt under ./theFitBody/test:
# add_library(test test.cpp)
# # The test.cpp provides similar functionality to the compiler's dynamic func.
# # Dynamic Library Link step d-4-1-CMakeLists.txt.
# # OR the below |>
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
# # the Upper <|
#
# 
# add_subdirectory(test)
# add the test library
# Dynamic Library Link step d-4-2-CMakeLists.txt.
# Make subproject test target cmake_testapp_boost available for the main build.
# Place he add_subdirectory(test) command in the rootCMakeLists.txt.
# 
# target_link_libraries(theFitBody PUBLIC test)
# Link the dynamic library test
# Dynamic Library Link step d-4-3-CMakeLists.txt.
# target_include_directories(theFitBody PUBLIC "${PROJECT_SOURCE_DIR}/test")
# Adds the binary tree to the search path or include files o that we will find
# test.h.
# Dynamic Library Link step d-4-4-OVER.
# target_include_directories(theFitBody PUBLIC "${EXTRA_INCLUDES}")
# Optional Library step o-7-4-thefirbody.cpp.

# CTest: a framework for compiling and running tests as part of the CMake build 
# process.
# may see: https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#ctest

# Separated Multiple directories CMakeLists.txt may see:
# https://cmake.org/examples/

# Update the optional variable USE_TEST 
# cmake ../Step2 -DUSE_TEST=OFF
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Library.html#tutorialconfig-h-in-cmakedefine


# References: 
# CMakeLists.txt | CLion - JetBrains
# https://www.jetbrains.com/help/clion/cmakelists-txt-file.html
# Quick CMake tutorial | CLion - JetBrains
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html
# CMake Tutorial
# https://cmake.org/cmake/help/latest/guide/tutorial/index.html#cmake-tutorial
# 
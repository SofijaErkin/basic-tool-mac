# Popular open source projects using CMake
# It is always a good practice to read open source projects, which are widely
# used to learn about the best practices.
# OpenCV: https://github.com/opencv/opencv
# Caffe2: https://github.com/caffe2/caffe2
# MySql Server: https://github.com/mysql/mysql-server
# Reference:
# https://medium.com/@onur.dundar1/cmake-tutorial-585dd180109b

# Notices: "may see" means "reference".
# 1.CMake Version
# Version Update RoadMap may see:
# GitHub Gist:
# https://gist.github.com/SofijaErkin/0c3e104b76fc874eb40579bb2527ed4f
# Upper, lower, and mixed case commands are supported by CMake. 
#may see: https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#step-1-a-basic-starting-point
# cmake_minimum_required(VERSION 2.8) 
# Specifies the minimum required version of CMake.
# 
# may see:
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# The cmake_minimum_required command sets the policies so that the build is 
# exactly like it would be on the listed version of CMake, in other words, CMake
# “dumbs itself down” to the version you request for any features that could 
# produce a different build. This makes CMake almost perfectly backwards 
# compatible.
#
# OR,
# Adding Generator Expressions a-g-e-n-2--CMakeLists.txt.------------------------
# cmake_minimum_required(VERSION 3.15)
# Update the call to require that more recent version.
# Adding Generator Expressions a-g-e-n-2--CMakeLists.txt.------------------------
cmake_minimum_required(VERSION 2.8.9...3.22) 
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# major version 2, minor version 8, and patch version 9. Providing a version
# number allows for future support for your build environment. 
# may see:
# https://github.com/hsf-training/hsf-training-cmake-webpage/blob/gh-pages/_includes/code/00-intro/CMakeLists.txt
# This is required in all CMakeLists Selecting a nice minimum version and range
# may see:
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# Specify a range of versions, this will cause the policies to be set to the 
# highest supported value in that range. As a general rule, set the highest 
# version you’ve tested with here.
# Note: "the highest version" means your the version of cmake on your laptop, 
# as I see.

# 2.Project Name And Version
# project(theFitBody)     
# project(theFitBody VERSION 1.0)                 
# Defines the project name and the version according to what we provied during
# project creation.
# Project version step p-v-5-1-CMakeLists.txt.
# 
# may see:
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# You need to be working on a project, and it needs at least a name. CMake
# assumes a CXX (that’s C++) and C mixed project if you don’t give any 
# LANGUAGES.
#
project(theFitBody 
  VERSION 
    1.0
  DESCRIPTION
    "A project to test CMake build"
  LANGUAGES
    CXX
)
# may see:
# https://github.com/hsf-training/hsf-training-cmake-webpage/blob/gh-pages/_includes/code/00-intro/CMakeLists.txt
# # We can call the project anything we want Listing the language(s) avoids the C
# + CXX default.
# may see:
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# Projects can have versions, descriptions, and languages.
# Whitespace doesn’t matter. Be clear/pretty, or use cmake-format.

# Selecting static or shared Librarires s-s-o-s-l-n-1-CMakeLists.txt.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#step-9-selecting-static-or-shared-libraries
# Shows the BUILD_SHARED_LIBS variable be used to control the default behavior 
# of add_library(), and allow control over how libraries without an explicit 
# type (STATIC, SHARED, MODULE or OBJECT) are built.
# 
# set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
# set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}")
# Notice: this three command need to be changed for mac!
# Control where the static and shared libraries are built so that on windows,
# we don't need to tinker with the path to run the executable.
#
# option(BUILD_SHARED_LIBS "Build using shared libraries" ON)
# Uses the option() command as it allows users to optionally select if the 
# value should be ON or OFF.
# Selecting static or shared Librarires s-s-o-s-l-n-1-CMakeLists.txt.

# option(USE_TEST "Use theFitBody provided dynamic library implementation" ON)
# Makes the Dynamic/Static Library optional. Large projects this s a common
# occurrence.
# Optional Library step o-7-1-CMakeLists.txt.

configure_file(thefitbodyConfig.h.in thefitbodyConfig.h)
# Configure a header file to pass the version number to the source code.
# Project version step p-v-5-2-CMakeLists.txt.

# 3.CMake CXX Standard
set(CMAKE_CXX_STANDARD 11)          
# Sets the CMAKE_CXX_STANDARD variable to the value of 11, as we selected 
# when creating the project.
set(CMAKE_CXX_STANDARD_REQUIRED True)
# Specify he C++ standard
# Adds CMAKE_CXX_STANDARD declarations above the call to add_executable.

# OR,
# Adding Generator Expressions a-g-e-n-1-CMakeLists.txt------------------------
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Generator%20Expressions.html#step-10-adding-generator-expressions
# Insteading of using  CMAKE_CXX_STANDARD,
# Just constructe an INTERFACE target and specifying the required C++ standard
# level of 11:
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Generator%20Expressions.html#cmakelists-txt-cxx-std-feature
# add_library(theFitBody_compiler_flags INTERFACE)
# target_compile_features(theFitBody_compiler_flags INTERFACE cxx_std_11)
# This upcoming section constructing an INTERFACE target and specifying the required C++ standard
# level of 11 will require a change to the cmake_minimum_required() usage in the code. 
# The Generator Expression that is about to be used was introduced in 3.15. 
# Adding Generator Expressions a-g-e-n-1-CMakeLists.txt------------------------

# 4.Bring Includes
# include_directories(inc)
# include_directories(${CMAKE_CURRENT_LIST_DIR}/inc)
# Adds the headers either to all the targets or to some specificones.
#
# The include_directories() function is used to bring the header files into the
# build environment.
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/

# 5.Manually Sources
set(SOURCE_FILES thefitbody.cpp)
# Add thefitbody.cpp file of project root directory as source file.
# Can manually add the source file using the set command as follows:
# (Add source files of project root directory as source file)
# 
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# The set(SOURCES … ) function can be used to set a variable (e.g: SOURCES or
# SOURCE_FILES) that contains the name values of all of the source files (.cpp
# or .cc or .c) in the project. However, because each source file must be added
# manually the next line is used in its place(file(GLOB)), and this line is 
# commented out. 
# 
# aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/src sources_path)
# 
# aux_source_directory(src SOURCES)
# Add all the file in directory.
#
# file(GLOB SOURCES "src/*.cc")
# However, the file(GLOB...) allows for wildcard additions.
#
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# The file() command is used to add the source files to the project. GLOB (or 
# GLOB_RECURSE) is used to create a list of all of the files that meet the 
# globbing expression (i.e., “src/*.cpp“ or "src/.cc" or "src/.c" or "common/
# .cc") and add them to a variable SOURCES or SOURCE_FILES.

# Optional Library step o-7-2-CMakeLists.txt.
# if(USE_TEST)
#   add_subdirectory(test)
#  list(APPEND EXTRA_LIBS test)
#  list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/test") # OR the below
#  # Delete the line "list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR}/test")"
#  # if use INTERFACE in ~/test/CMakeLists.txt.
#  # INTERFACE usage i-u-3-1-CMakeLists.txt/./test/CMakeLists.txt.
# endif(~USE_TEST)
#   add_subdirectory(~test)
#   ...
# Optional Library step o-7-2-CMakeLists.txt.

# include_directories(inc/github)
# Add additional headers located n separate directories.

target_include_directories(theFitBody PUBLIC "${PROJECT_BINARY_DIR}")
# Adds that directory to the list of paths to search for include files. 
# Project version step p-v-5-3-thefitbody.cpp.

# 6.Add Executable
add_executable(theFitBody ${SOURCE_FILES})
#
# add_exectable(Bank ${SOURCES})
#
# # add_executable(${PROJECT_NAME} ${source_path})
#
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# The add_executable() function uses the SOURCES or SOURCE_FILES variable, 
# rather than an explicit reference to each source file, in order to build the
# theFitBody executable program.
# The first argument to the add_executable() function is the name of the 
# executable to be built, and the second argument is the source file from which
# to build the executable.
# We need an executable target.
# may see:
# https://github.com/hsf-training/hsf-training-cmake-webpage/blob/gh-pages/_includes/code/00-intro/CMakeLists.txt
# Adds theFitBody excutable target which will be build from "${SOURCE_FILES}".
# Packaging Debug and Release p-d-a-r-n-2-~/theFitBody/test/CMakeLists.txt.
# set_target_properties(theFitBody PROPERTIES DEBUG_POSTFIX ${CMAKE_DEBUG_POSTFIX}) 
# Packaging Debug and Release p-d-a-r-n-2-~/theFitBody/test/CMakeLists.txt.
# 
# may see:
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# You need at least one library or executable to do anything interesting. 
# The “thing” you make here is called a “target”, and the executable/library has
# the same name, by default, and it has to be unique in the project. You use 
# add_executable for programs, and add_library for libraries.

# 7.Compiler
set(CMAKE_CXX_COMPILER "g++")
# the default editor

# 8.Debugr
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
set(CAMKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")
# Open the message of debug

# OR,
# Packaging Debug and Release p-d-a-r-n-1-CMakeLists.txt.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20Debug%20and%20Release.html#step-12-packaging-debug-and-release
# set(CMAKE_DEBUG_POSTFIX d)
# add_library(theFitBody_compiler_flags INTERFACE)
# Uses d as the postfix for the debug executable and libraries.
# Packaging Debug and Release p-d-a-r-n-1-CMakeLists.txt.

# 
#
#

# 9.C++11 Support
set(CMAKE_CXX_FLAGS "-std=c++0x -stdlib=libc++ -g3 -Wall -O0")
# That make clang++ support C++11
# Append flag, best practice, suggested, don't lose previously defined flags
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
# eg:
# Suggested way is to keep previous flags in mind and append new ones
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x -Wall")
# Alternatively, you can use generator expressions, which are conditional 
# expressions. Below says that, if compiper is c++ then set it to c++11
# add_compile_options("$<$<STREQUAL:$<TARGET_PROPERTY:LINKER_LANGUAGE>,CXX>:-std=c++11>")

# OR, 7. 8. 9. 
# Adding Generator Expressions a-g-e-n-3--CMakeLists.txt.------------------------
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Generator%20Expressions.html#cmakelists-txt-target-compile-options-genex
# set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU,LCC>")
# set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")
# Uses the COMPILE_LANG_AND_ID generator expression to control which flags to 
# apply given a language and a set of compiler ids as seen upstairs.
# target_compile_options(theFitBody_compiler_flags INTERFACE
#   "$<${gcc_like_cxx}:$<BUILD_INTERFACE:-Wall;-Wextra;-Wshadow;-Wformat=2;-Wunused>>"
#   "$<${msvc_cxx}:$<BUILD_INTERFACE:-W3>>"
# )
# Adds the desired compiler warning flags that we want for our project. 
# The warning flags are encapsulated inside a BUILD_INTERFACE condition.
# This is done so that consumers of our installed project will not inherit our
# warning flags.
# Adding Generator Expressions a-g-e-n-3--CMakeLists.txt.------------------------

# 10.Target Linked Library
# main source function file, No inlcude, as it is not relevant to a library 
# build.
#
# Build s shared library (Linux: .so / Mac OS X: .dylib / Windows: .dll)-------
# BIG Notice:
# HelloWorld
#         |
#         |_.vscode
#         |     |__c_cpp_properties.json
#         |     |__launch.json
#         |     |__settings.json
#         |     |__tasks.json
#         |__CMakeLists.txt
#         |__build
#         |__inc
#         |   |__helloworld.h
#         |__src
#             |__helloworld.cpp
#
#
# set(CMAKE_BUILD_TYPE Release)
# The set(CMAKE_BUILD_TYPE Release) function is used to set the build type to 
# be a release build.
# include_directories(inc)
#
# add_library(testStudent SHARED ${SOURCES})
# Generate the shared library from the sources.
# The library is built as a shared library using the SHARED flag (other options
# are: STATIC or MODULE) , and the testStudent name is used as the name of the 
# shared library.
#
# install(TARGETS testStudent DESTINATION /usr/lib)
# Set the location for library installation -- i.e., /usr/lib in this case
# not really necessary in this example. Use "sudo make install" to apply.
# The install() function to define an installation location for the library 
# (in this case it is /usr/lib). Deployment is invoked using a call to 
# sudo make install in this case.
# The library is built in the build directory, which results in the output.
# Use the ldd command to display the shared library dependencies.
# The CMakeLists.txt file(for shared library) also includes a deployment step, 
# which allows you to install the library in a suitable accessible location. 
# Shared library locations can be added to the path, or if you wish to make 
# them available system wide you can add them to the /usr/lib directory. 
# For example, the libtestStudent.so library can be installed system wide 
# using: 
# sudo make install
# ls -l /usr/lib|grep libtest*
# This step has to be performed with root access in order to write to the 
# /usr/lib directory. 
# You will also find a file in the build directory, called install_manifest.txt 
# that describes the locations at which the make install command applied 
# changes.
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# Build s shared library (Linux: .so / Mac OS X: .dylib / Windows: .dll)-------
# 
#
#
#
# Build a static library (Linux: .a / Mac OS X: .a / Windows: .lib)------------
# may see;
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
# A statically-linked library is created at compile time to contain all of the 
# code relating the library — essentially it makes copies of any dependency 
# code,including that in other libraries. 
# This results in a library that is typically larger in size than the 
# equivalent shared library, but because all of the dependencies are determined
# at compile time, there are fewer run-time loading costs and the library may 
# be more platform independent. 
# Unless you are certain that you require a static library,  you should use a 
# shared library as there will be fewer code duplications and the shared library
# can be updated (e.g., for error correction) without recompilation.
#
# To build a static library using CMake, the steps are almost exactly the same 
# as for building a shared library.
#
# set(CMAKE_BUILD_TYPE Release)
#
# include_directories(inc)
# Bring the headers, such as Student.h into the project.
#
# file(GLOB SOURCES "src/*.cpp")
# However, the file(GLOB...) allows for wildcard additions.
# 
# add_library(testStudent STATIC ${SOURCES})
# OR,
# add_library(test_library STATIC cal.cpp)
# Generate the static library from the sources.
# Adds library target. e.g: create a static library "test_library: from cal.cpp 
# source file.
# Library target "test_library" build from libtest_library.a file under the 
# cmake-build-debug folder. 
# 
# install(TARGETS testStudent DESTINATION /usr/lib)
# Set the location for library installation -- i.e., /usr/lib in this case.
# not really necessary in this example. Use "sudo make install" to apply
# Use the same steps as before to build the static library, and you will see
# the output as follows:
# cd build/
# cmake ..
# make
# ls -l lib*
# You can determine the constituents of a static library using the GNU ar 
# (archive) command — for example:
# ar -t libtestStudent.a
# You can also use the GNU nm command to list the symbols in object files and
# binaries. In this case, the command lists the symbols in the student library
# and their types (e.g., T is code, U is undefined, R is read-only data). 
# This information can be very useful for debugging any problems that may occur
# with static libraries.
# ~/studentlib_static/build$ nm -C libtestStudent.a 
# may see:
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#lib-targets
#
# Build a static library (Linux: .a / Mac OS X: .a / Windows: .lib)------------

# Link Shared or Static Library
# CMake can be used to generate the Makefiles in your project in order to 
# simplify this process.
# This step provides the source code for a CMakeLists.txt file that can be 
# used to build a program that links to a library (either shared or static).
#
# For the shared library:
# set ( PROJECT_LINK_LIBS libtestStudent.so )
# link_directories( ~/exploringBB/extras/cmake/studentlib_shared/build )
# For the static library:
# set ( PROJECT_LINK_LIBS libtestStudent.a )
# link_directories( ~/exploringBB/extras/cmake/studentlib_static/build )
# 
# include_directories(~/exploringBB/extras/cmake/studentlib_shared/include)
# 
# add_executable(libtest libtest.cpp)
# target_link_libraries(libtest ${PROJECT_LINK_LIBS} )
# The project can be built and executed using the following steps:
# tree
# cd build
# cmake ..
# make
# ls -l libtest
# ./libtest
# 
# OR,
#
# find_library(TEST_LIBRARY test_library lib)
# Provides the full path, or Create a lib directory under the project root 
# and copy libtest_library.a from its default location (cmake-build-debug) to 
# this folder.
# target_link_libraries(theFitBody LINK_PUBLIC ${TEST_LIBRARY})
# Pass directly via ${TEST_LIBRARY} variable.
# target_link_libraries(theFitBody PUBLIC ${EXTRA_LIBS})
# Optional Library step o-7-3-CMakeLists.txt.
# Make sure o place target_link_libraries after the add_execuable command.
#
# 

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
# # CMakeLists.txt under ./theFitBody/test ------------------------------------
#
# # Packaging Debug and Release p-d-a-r-n-3-MultiCPackConfig.cmake.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20Debug%20and%20Release.html#mathfunctions-cmakelists-txt-version-properties
# set_property(TARGET test PROPERTY VERSION "1.0.0")
# set_property(TARGET test PROPERTY SOVERSION "1")
# # Sets the VERSION and SOVERSION properties, in test/CMakeLists.txt.
# # Adds version numbering to the test library. 
#
# mkdir debug release
# Create debug and release subbdirectories. 
# cd debug
# cmake -DCMAKE_BUILD_TYPE=Debug ..
# Notice: CMake Error at CMakeLists.txt:18 (project):
# VERSION not allowed unless CMP0048 is set to NEW
# cmake --build .
# cd ../release
# cmake -DCMAKE_BUILD_TYPE=Release ..
# Notice: CMake Error at CMakeLists.txt:18 (project):
# VERSION not allowed unless CMP0048 is set to NEW
# cmake --build .
# Setup debug and release builds, use CMAKE_BUILD_TYPE to set the 
# configuration type.
# 
# # Packaging Debug and Release p-d-a-r-n-3-MultiCPackConfig.cmake.
#
# add_library(test test.cpp)
# # The test.cpp provides similar functionality to the compiler's dynamic func.
# # Dynamic Library Link step d-4-1-CMakeLists.txt.
# # Selecting static or shared Librarires s-s-o-s-l-n-4-~/test/CMakeLists.txt.
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
# target_include_directories(test 
#                             INTERFACE 
#                             ${CMAKE_CURRENT_SOURCE_DIR}
#                             )
# # Use test Library as INTERFACE.
# # INTERFACE usage i-u-3-2-CMakeLists.txt/./test/CMakeLists.txt.
# # Selecting static or shared Librarires s-s-o-s-l-n-5-~/test/CMakeLists.txt.
#
# # OR,
# # Adding Export Configuration a-e-c-n-4-~/theFitBody/Config.cmake.in.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#mathfunctions-cmakelists-txt-target-include-directories
# target_include_directories(test
#                           INTERFACE
#                            $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
#                            $<INSTALL_INTERFACE:include>
#                           )
# # Updates the test target_include_directories() to understand that it needs
# # different INTERFACE locations when being used from within the build 
# # directory and from an install / package.
# # Adding Export Configuration a-e-c-n-4-~/theFitBody/Config.cmake.in.
#
# # Selecting static or shared Librarires s-s-o-s-l-n-6-~/test/CMakeLists.txt.
# # may see:
# #https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#mathfunctions-cmakelists-txt-add-library-static
# option(USE_TEST "Use theFitBody provided testLIB implementation" ON)
# # # Should we use our own testLIB functions.
# # Selecting static or shared Librarires s-s-o-s-l-n-6-~/test/CMakeLists.txt.
#
# # Adds system inrospecion s-i-n-1--CMakeLists.txt.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html#step-5-adding-system-introspection
# # 
# include(CheckSymbolExists)
# check_symbol_exists(log "test.h" HAVE_LOG)
# check_symbol_exists(exp "test.h" HAVE_EXP)
# if(NOT (HAVE_LOG AND HAVE_EXP))
#   unset(HAVE_LOG CACHE) 
#   unset(HAVE_EXP CACHE)
#  set(CMAKE_REQUIRED_LIBRARIES "t")
#  check_symbol_exists(log "test.h" HAVE_LOG)
#  check_symbol_exists(exp "test.h" HAVE_EXP)
#  if(HAVE_LOG AND HAVE_EXP)
#    target_link_libraries(test PRIVATE t)
#  endif()
# endif()
# # Does this system provide the log and exp functions?
# # Or, has the target platform suppoet the log and exp functions.
#
# # OR
# include(CheckSymbolExists)
# check_symbol_exists(log "test.h" HAVE_LOG)
# check_symbol_exists(exp "test.h" HAVE_EXP)
# if(HAVE_LOG AND HAVE_EXP)
#   target_compile_definitions(test
#                              PRIVATE "HAVE_LOG" "HAVE_EXP")
# endif()
# 
# # Adds system inrospecion s-i-n-1--CMakeLists.txt.
#
# # Adds system inrospecion s-i-n-2--CMakeLists.txt.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html#mathfunctions-mysqrt-cxx-ifdef
# # Adds #if-#endif on ~/test/test.cpp
# #if defined(HAVE_LOG) && defined(HAVE_EXP)
#     type_expression_ variable_tar_ = expression(in-expression_variable_);
# std :: cout << "Computng sqrt of " << in-expression_variable_ << "to be" 
#             << variable_tar << "Using og and expc" << std :: endl;
# #else 
#     type_expression_ variable_tar_ = in-expression_variable_;
# #endif
# # Adds system inrospecion s-i-n-2--CMakeLists.txt.
#
# # Adds system inrospecion s-i-n-3-OVER.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html#mathfunctions-mysqrt-cxx-include-cmath
# # Needs to add the test-Library to ~/test/test.cpp
# #include <test-Library>
# # Adds system inrospecion s-i-n-3-OVER.
# 
#
# target_link_libraries(cmake_testapp_boost ${Boost_LIBRARIES})
# # link Boost libraries to the new target
#
# target_link_libraries(cmake_testapp_boost test_library)
# 
# # link Boost with code library
# # the Upper <|
# 
# 
# # Installing and testing Library i-t-l-3-1-CMakeLists.txt.
#
# install(TARGETS test DESTINATION lib)
# # Installs the library and header of Dynamic test Library and for the 
# # application we want to install the executable nd configured header.
# install(FILES test.h DESTINATION include)
# # This install command CMake add to the end of test/CMakeLists.txt.
#
# # Installing and testing Library i-t-l-3-1-CMakeLists.txt.
# 
# # CMakeLists.txt under ./theFitBody/test ------------------------------------ 

# Not use paltform log and exp functions.
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
# |    |__MakeTable.cpp
# |    |__test.cpp
# |    |__test.h
# |    
# |__thefitbody.cpp
#
# Just use Boost.Test framework for example.
# Inserted this code to CMakeLists.txt under ./theFitBody/test:
# # CMakeLists.txt under ./theFitBody/test ------------------------------------
#
# # Selecting static or shared Librarires s-s-o-s-l-n-7-~/test/CMakeLists.txt.
# if(USE_TEST)
# # Selecting static or shared Librarires s-s-o-s-l-n-7-~/test/CMakeLists.txt.
# # Adds a custom command and generate file a-c-c-g-f-n-1
# # Selecting static or shared Librarires s-s-o-s-l-n-8-~/test/CMakeLists.txt.
# add_executable(MakeTable MakeTable.cxx)
# # First we add the executable that generates the table.
# # At the top of ~/test/CMakeLists.txt, the executable for MakeTable is added 
# # as any other executable would be added.
# # Selecting static or shared Librarires s-s-o-s-l-n-8-~/test/CMakeLists.txt.
# # Adds a custom command and generate file a-c-c-g-f-n-1
#
# # Adds a custom command and generate file a-c-c-g-f-n-2
# # Selecting static or shared Librarires s-s-o-s-l-n-9-~/test/CMakeLists.txt.
# add_custom_command(
#  OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/Table.h
#  COMMAND MakeTable ${CMAKE_CURRENT_BINARY_DIR}/Table.h
#  DEPENDS MakeTable
#  )
# # Adds the command to generate the source code.
# # Adds a custom command that specifies how to produce Table.h by running 
# # MakeTable.
# # Selecting static or shared Librarires s-s-o-s-l-n-9-~/test/CMakeLists.txt.
# # Adds a custom command and generate file a-c-c-g-f-n-2
# 
# # Selecting static or shared Librarires s-s-o-s-l-n-10-~/test/CMakeLists.txt.
# add_library(testLibrary STATIC
#              mytest.cxx
#              ${CMAKE_CURRENT_BINARY_DIR}/Table.h
#              )
# # Library that just does mytest.
# # Selecting static or shared Librarires s-s-o-s-l-n-10-~/test/CMakeLists.txt.
#
# # Adds a custom command and generate file a-c-c-g-f-n-3
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Custom%20Command%20and%20Generated%20File.html#mathfunctions-cmakelists-txt-add-library-table-h
# add_library(test
#             mytest.cxx
#            ${CMAKE_CURRENT_BINARY_DIR}/Table.h
#            )
# # Lets CMake know that mytest.cxx depends on the generated file Table.h. 
# # This is done by adding the generated Table.h to the list of sources for the
# # library MathFunctions.
# # Adds a custom command and generate file a-c-c-g-f-n-3
#
# # Selecting static or shared Librarires s-s-o-s-l-n-11-~/test/thefitbody.cpp.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#mathfunctions-cmakelists-txt-add-library-static
# target_include_directories(testLibrary PRIVATE
#                             ${CMAKE_CURRENT_BINARY_DIR}
#                             )
# # States that we depend on our binary dir to find Table.h
# target_link_libraries(test PRIVATE testLibrary)
# endif()
#
# # Selecting static or shared Librarires s-s-o-s-l-n-14-OVER.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#mathfunctions-cmakelists-txt-position-independent-code
# set_target_properties(testLibrary PROPERTIES
#                        POSITION_INDEPENDENT_CODE ${BUILD_SHARED_LIBS}
#                        )
# # States that testLibrary need PIC when the default is shared libraries
# # Selecting static or shared Librarires s-s-o-s-l-n-14-OVER.
#
# target_compile_definitions(test PRIVATE "EXPORTING_TEST")
# # Define the symbol stating we are using the declspec(dllexport) when
# # building on windows, macOS may change!
#
# set(installable_libs test)
# # OR,
# # Adding Export Configuration a-e-c-n-1-CMakeLists.txt
# set(installable_libs test theFitBody_compiler_flags)
# # Modify test/CMakeLists.txt so that all targets have a 
# # target_link_libraries() call to theFitBody_compiler_flags.
# # Adding Export Configuration a-e-c-n-1-CMakeLists.txt
#
# if(TARGET testLibrary)
#  list(APPEND installable_libs testLibrary)
# endif()
#
# install(TARGETS ${installable_libs} DESTINATION lib)
# # OR,
# # Adding Export Configuration a-e-c-n-2-CMakeLists.txt
# install(TARGETS ${installable_libs}
#        EXPORT testTargets
#        DESTINATION lib)
# # The EXPORT keyword generates a CMake file containing code to import all 
# # targets listed in the install command from the installation tree. 
# # Adding Export Configuration a-e-c-n-2-CMakeLists.txt
#
# install(FILES test.h DESTINATION include)
# # Install rules.
# 
# # May change mytest.cpp.!
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#mathfunctions-mysqrt-cxx-namespace
# 
# # Selecting static or shared Librarires s-s-o-s-l-n-13-~/test/CMakeLists.txt.
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html#mathfunctions-mathfunctions-h
# test.h under ~/theFitBody/test/test.h ---------------------------------------
#if defined(_WIN32)
#  if defined(EXPORTING_MYMATH)
#    define DECLSPEC __declspec(dllexport)
#  else
#    define DECLSPEC __declspec(dllimport)
#  endif
#else // non windows
#  define DECLSPEC
#endif
# namespace test {
# double DECLSPEC mytest(double x);
# }
# #
# test.h under ~/theFitBody/test/test.h ---------------------------------------
# # Selecting static or shared Librarires s-s-o-s-l-n-13-~/test/CMakeLists.txt.
#
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
# target_include_directories(test INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
# # Use test Library as INTERFACE.
# # INTERFACE usage i-u-3-2-CMakeLists.txt/./test/CMakeLists.txt.
# 
#
# target_link_libraries(cmake_testapp_boost ${Boost_LIBRARIES})
# # link Boost libraries to the new target
#
# target_link_libraries(cmake_testapp_boost test_library)
# 
# # link Boost with code library
# # the Upper <|
#
# # Adds a custom command and generate file a-c-c-g-f-n-4
# target_include_directories(test
#          INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}
#          PRIVATE ${CMAKE_CURRENT_BINARY_DIR}
#          )
# # Adds the current binary directory to the list of include directories so 
# # that Table.h can be found and included by test.cxx.
# # Adds a custom command and generate file a-c-c-g-f-n-4
#
# # Adds a custom command and generate file a-c-c-g-f-n-5
# # Adds header file ~/test/Table.h to ~/test/test.cpp
# #include "Table.h"
# # Adds a custom command and generate file a-c-c-g-f-n-5
#
# # Adds a custom command and generate file a-c-c-g-f-n-6
# # Rewrite ~/test/test.cpp
# # may see:
# # https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Custom%20Command%20and%20Generated%20File.html#mathfunctions-mysqrt-cxx
#
#
#
# # Installing and testing Library i-t-l-3-1-CMakeLists.txt.
#
# install(TARGETS test DESTINATION lib)
# # Installs the library and header of Dynamic test Library and for the 
# # application we want to install the executable nd configured header.
# install(FILES test.h DESTINATION include)
# # This install command CMake add to the end of test/CMakeLists.txt.
#
# # Installing and testing Library i-t-l-3-1-CMakeLists.txt.
# 
# # CMakeLists.txt under ./theFitBody/test ------------------------------------ 

# add_subdirectory(test)
# AddS the test library.
# Dynamic Library Link step d-4-2-CMakeLists.txt.
# Also,
# Selecting static or shared Librarires s-s-o-s-l-n-2-CMakeLists.txt.
# Make subproject test target cmake_testapp_boost available for the main build.
# Place he add_subdirectory(test) command in the rootCMakeLists.txt.

# target_link_libraries(theFitBody PUBLIC test)
# Link the dynamic library test
# Dynamic Library Link step d-4-3-CMakeLists.txt.
# Also,
# Selecting static or shared Librarires s-s-o-s-l-n-3-~/test/CMakeLists.txt.
# target_include_directories(theFitBody PUBLIC "${PROJECT_SOURCE_DIR}/test")  
# Adds the binary tree to the search path or include files o that we will find
# test.h.
# Dynamic Library Link step d-4-4-OVER.
# target_include_directories(theFitBody PUBLIC "${EXTRA_INCLUDES}") # OR below
# if use test as INTERFACE.
# target_include_directories(theFitBody PUBLIC "${PROJECT_BINARY_DIR}")
# Optional Library step o-7-4-thefirbody.cpp.

# Installing and testing Library i-t-l-3-2-CMakeLists.txt.
# 
# install(TARGETS theFitBody DESTINATION bin)
#
# install(FILES "${PROJECT_BINARY_DIR}/thefitbodyCOnfig.h" DESTINATION include)
#
# Installing and testing Library i-t-l-3-2-CMakeLists.txt.

#  Adding Export Configuration a-e-c-n-3-~/theFitBody/test/CMakeLists.txt
# install(EXPORT testTargets
#   FILE testTargets.cmake
#  DESTINATION lib/cmake/test
# )
# Needs to explicitly install the generated testTargets.cmake file.
# Adding Export Configuration a-e-c-n-3-~/theFitBody/test/CMakeLists.txt
# Adding Export Configuration a-e-c-n-6-CMakeLists.txt.
# include(CMakePackageConfigHelpers)
# To properly configure and install that file, add the following to the bottom 
# of the top-level CMakeLists.txt.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#cmakelists-txt-install-config-cmake
#
# configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
#   "${CMAKE_CURRENT_BINARY_DIR}/testConfig.cmake"
#   INSTALL_DESTINATION "lib/cmake/example"
#   NO_SET_AND_CHECK_MACRO
#   NO_CHECK_REQUIRED_COMPONENTS_MACRO
#   )
# Generates the config file that is includes the exports
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#cmakelists-txt-configure-package-config-cmake
#
#  write_basic_package_version_file(
#   "${CMAKE_CURRENT_BINARY_DIR}/testConfigVersion.cmake"
#   VERSION "${THEFITBODY_VERSION_MAJOR}.${THEFITBODY_VERSION_MINOR}"
#   COMPATIBILITY AnyNewerVersion
# )
# Writes a file which is used by the "find_package" document the version and 
# compatibility of the desired package. Use the THEFITBODY_VERSION_* variables
# and say that it is compatible with AnyNewerVersion, which denotes that this 
# version or any higher one are compatible with the requested version.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#cmakelists-txt-basic-version-file-cmake
#
#
# install(FILES
#   ${CMAKE_CURRENT_BINARY_DIR}/testConfig.cmake
#   ${CMAKE_CURRENT_BINARY_DIR}/testConfigVersion.cmake
#   DESTINATION lib/cmake/test
#   )
# Sets both generated files to be installed.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#cmakelists-txt-install-configured-files-cmake
#
# Optional
# 
# export(EXPORT test
#  FILE "${CMAKE_CURRENT_BINARY_DIR}/testTargets.cmakDEBUGe"
# )
# If want project to also be used from a build directory we only have to add 
# the following to the bottom of the top level CMakeLists.txt.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html#cmakelists-txt-export
# With this export call now generate a Targets.cmake, allowing the configured 
# testConfig.cmake in the build directory to be used by other projects, without
# needing it to be installed.
# Adding Export Configuration a-e-c-n-6-CMakeLists.txt.

# Testing theFitBody t-t-f-b-n-1-OVER.-----------------------------------------
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html#testing-support
# enable_testing()
#
# add_test(NAME Runs COMMAND theFitBody 25)
# Does simply verifes that the application theFitBody runs, does no segfault or
# otherwise ceash, and has a zero return value.
#
# add_test(NAME Usage COMMAND theFitBody)
# Does the usage message work?
# Does verify that the output of the test contains certain strings. 
# set_tests_properties(Usage
#  PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number"
#  )
#
# function(do_test target arg result)
#  add_test(NAME Comp${arg} COMMAND ${target} ${arg})
#  set_tests_properties(Comp${arg}
#    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
#    )
# endfunction()
# Define a function to simplify adding tests.
# do_test that runs the application and verifies that the computed square root 
# is correct for given input.
#
# do_test(theFitBody 4 "4 is 2")
# do_test(theFitBody 9 "9 is 3")
# do_test(theFitBody 5 "5 is 2.236")
# do_test(theFitBody 7 "7 is 2.645")
# do_test(theFitBody 25 "25 is 5")
# do_test(theFitBody -25 "-25 is (-nan|nan|0)")
# do_test(theFitBody 0.0001 "0.0001 is 0.01")
# Do a bunch of result based tests
# Ddded to the project with a name, input, and expected results based on the 
# passed arguments.
#
# Rebuild and cd the binary directory and run ctest executable:
# ctest -N
# 
# and
# 
# ctest -VV
# 
# For multi-config generator, add the "-C <mode>" flag:
# e.g:
# Run tests in Debug mode use(from binary directory):
# ctest -C Debug -VV
# Run tests in Release mode:
# ctest -C Release -VV
# 
# Others, IDE need to build RUN_TESTS target.
#
# Testing theFitBody t-t-f-b-n-1-OVER.-----------------------------------------

# Or Change "Testing theFitBody t-t-f-b-n-1-OVER." to Testing dashboard
#
# Testing dashboard theFitBody t-d-t-f-b-n-1-CTestConfig.cmake ----------------
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#step-8-adding-support-for-a-testing-dashboard
# include(CTest)
# Enable dashboard scripting.
# CTest module will automatically call enable_testing(), so we can remove it 
# from our CMake files.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#cmakelists-txt-include-ctest
# Adds CTestConfig.cmake to the top directory of theFitBody Project.
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#ctestconfig-cmake
# Testing dashboard theFitBody t-d-t-f-b-n-1-CTestConfig.cmake ----------------

# Testing dashboard theFitBody t-d-t-f-b-n-3-OVER ----------------
# To create a simple dashboard you can run the cmake executable or the 
# cmake-gui to configure the project, but do not build it yet.
# Instead, change directory to the binary tree, and then run:
# ctest [-VV] -D Experimental
# Multi-config generators, the configuration type must be specified:
# ctest [-VV] -C Debug -D Experimental
# OR
# ctest [-VV] -C Release -D Experimental
# Notice: I need to create a project named "theFirBody"on CMakeTurorial, or 
# That Testing dashboard does not work!
# If create a project "theFitBody" on CMakeTurorial, then The ctest executable 
# will build and test the project and submit the results to Kitware's public 
# dashboard:
# https://my.cdash.org/index.php?project=CMaketheFitBody
# Testing dashboard theFitBody t-d-t-f-b-n-3-OVER ----------------

# Packages an installer
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20an%20Installer.html#step-7-packaging-an-installer
# include(InstallRequiredSystemLibraries)
# Includes InstallRequiredSystemLibraries,
# This module will include any runtime libraries that are needed by the project 
# for the current platform. 
# set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
# Sets some CPack variables to where we have stored the license and version
# information for this project. 
# set(CPACK_PACKAGE_VERSION_MAJOR "${THEFITBODY_VERSION_MAJOR}")
# set(CPACK_PACKAGE_VERSION_MINOR "${THEFITBODY_VERSION_MINOR}")
# The version information was set earlier in this theFitBody and the 
# license.txt has been included in the top-level source directory for this 
# step.
# set(CPACK_SOURCE_GENERATOR "TGZ")
# The CPACK_SOURCE_GENERATOR variable selects a file format for the source 
# package.
# include(CPack)
# CPack module which will use these variables and some other properties of 
# the current system to setup an installer.
# Build the Packages an installer Project and run the cpack execuable, just 
# use:
# cpack
# To specify the generator, use the -G option, e.g:
# cpack -G ZIP
# Multi-config builds, use "-C" to specify he configuration, just use:
# cpack -G ZIP -C Debug
#
# OR
# 
# cpack -G ZIP -C Release
# To create an archive of the full source tree would just type:
# cpack --config CPackSourceConfig.cmake
# Others,
# Run the installer found in the binary directory. 
# Then run the installed executable and verify that it works.

# CTest: a framework for compiling and running tests as part of the CMake build 
# process.
# may see: https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html#ctest

# Separated Multiple directories CMakeLists.txt 
# As your project grows, it is likely that you will organize it into 
# sub-directories. Makefiles become more verbose when there are sub-directories
# present —in fact, it is usual practice to place an individual Makefile in 
# each sub-directory. These Makefiles are then individually invoked by the 
# Makefile in the parent directory.
# But,
# CMake can be very useful in this situation. 
# may see:
# https://cmake.org/examples/
# OR,
# may see:
# http://derekmolloy.ie/hello-world-introductions-to-cmake/

# Update the optional variable USE_TEST 
# cmake ../Step2 -DUSE_TEST=OFF
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Library.html#tutorialconfig-h-in-cmakedefine

# Installing and testing Library i-t-l-3-3-OVER.
# Install step, just use :
# make install
# 
# OR
# 
# cmake install
# 
# multi-configuration add the "--config" argument to specific the configuration
# 
# Separated install add the "--prefix" argument to follow the installed root, 
# e.g:
# (This will navigate to the install directory nd verify that the installed 
# theFitBody runs.)
# cmake install . --prefix "User/marryme/theFitBodyTest"
# 
# may see:
# https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html#install-rules

# References: 
# CMakeLists.txt | CLion - JetBrains
# https://www.jetbrains.com/help/clion/cmakelists-txt-file.html
# Quick CMake tutorial | CLion - JetBrains
# https://www.jetbrains.com/help/clion/quick-cmake-tutorial.html
# CMake Tutorial
# https://cmake.org/cmake/help/latest/guide/tutorial/index.html#cmake-tutorial
# More Modern CMake Your first CMakeLists.txt file
# https://hsf-training.github.io/hsf-training-cmake-webpage/03-cmakelists/index.html
# https://github.com/hsf-training/hsf-training-cmake-webpage/tree/gh-pages/_includes/code/00-intro
# Introduction to CMake by Example
# http://derekmolloy.ie/hello-world-introductions-to-cmake/
#
# The best, and most up-to-date documentation on CMake:
# https://cmake.org/
# The CMake Documentation Index provides a very useful list of available commands:
# The document is available at:CMake 3.22 Documentation Index
# https://cmake.org/cmake/help/v3.22/genindex.html
# CMake commands:
# https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html
# KDE has its own CMake style guideline
# https://community.kde.org/Policies/CMake_Coding_Style
# A detailed list of environment variables
# https://cmake.org/cmake/help/latest/manual/cmake-env-variables.7.html
# CMake Generator Expressions
# https://cmake.org/cmake/help/v3.22/manual/cmake-generator-expressions.7.html
# CMake Variables
# https://cmake.org/cmake/help/v3.22/manual/cmake-language.7.html#variables
# https://cmake.org/cmake/help/v3.22/manual/cmake-variables.7.html#manual:cmake-variables(7)
# Following variables can be used to check for system related information
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/tutorials/How-To-Write-Platform-Checks
# Following script can be used to block in-source building.
# Source of script OpenCV Project:
# https://github.com/opencv/opencv/blob/master/CMakeLists.txt
# 
# Cross Compiling for Linux
# https://cmake.org/cmake/help/v3.22/manual/cmake-toolchains.7.html#cross-compiling-for-linux
# User manuals:
# https://gcc.gnu.org/onlinedocs/gcc-4.1.2/gcc/Invoking-GCC.html#Invoking-GCC
# https://clang.llvm.org/docs/ClangCommandLineReference.html#clang-command-line-argument-reference
# Optimisation flags-Setting Compiler Flags
# https://clang.llvm.org/docs/ClangCommandLineReference.html#optimization-level
# https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
# Warning flags
# https://gist.github.com/d0k/3608547
# https://clang.llvm.org/docs/DiagnosticsReference.html
# Set Source File Properties
# https://cmake.org/cmake/help/v3.22/manual/cmake-properties.7.html#source-file-properties
# Linker Flags
# https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html
# Install command of CMake
# https://cmake.org/cmake/help/v3.22/command/install.html
# 
# Other Resources
# GNU and LLVM Compiler Flags:
# https://www.bu.edu/tech/support/research/software-and-programming/programming/compilers/gcc-compiler-flags/
# FindBoost-cmake-modules
# https://cmake.org/cmake/help/v3.22/module/FindBoost.html
# CMake Wiki Examples
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/Examples
# Learning CMake A Beginner's Guide
# https://tuannguyen68.gitbooks.io/learning-cmake-a-beginner-s-guide/content/index.html
# 

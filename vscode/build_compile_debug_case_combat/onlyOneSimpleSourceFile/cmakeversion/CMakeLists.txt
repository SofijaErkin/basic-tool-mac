# Version Update RoadMap may see:
# GitHub Gist:
# https://gist.github.com/SofijaErkin/0c3e104b76fc874eb40579bb2527ed4f
# Upper, lower, and mixed case commands are supported by CMake. 
#may see: https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#step-1-a-basic-starting-point
cmake_minimum_required(VERSION 2.8) 
# Specifies the minimum required version of CMake.

# project(theFitBody)     
project(theFitBody VERSION 1.0)                 
# Defines the project name and the version according to what we provied during
# project creation.
# Project version step p-v-5-1-CMakeLists.txt.

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
# # CMakeLists.txt under ./theFitBody/test ------------------------------------
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
# target_include_directories(test INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
# # Use test Library as INTERFACE.
# # INTERFACE usage i-u-3-2-CMakeLists.txt/./test/CMakeLists.txt.
# # Selecting static or shared Librarires s-s-o-s-l-n-5-~/test/CMakeLists.txt.
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
# # Adds a custom command that specifies how to produce Table.h by running 
# # MakeTable.
# # Selecting static or shared Librarires s-s-o-s-l-n-9-~/test/CMakeLists.txt.
# # Adds a custom command and generate file a-c-c-g-f-n-2
# 
# # Adds a custom command and generate file a-c-c-g-f-n-3
# add_library(test
#             test.cxx
#            ${CMAKE_CURRENT_BINARY_DIR}/Table.h
#            )
# # Lets CMake know that mysqrt.cxx depends on the generated file Table.h. 
# # This is done by adding the generated Table.h to the list of sources for the
# # library MathFunctions.
# # Adds a custom command and generate file a-c-c-g-f-n-3
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
# 

add_executable(theFitBody ${SOURCE_FILES})
# Adds theFitBody excutable target which will be build from "${SOURCE_FILES}".

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

# Separated Multiple directories CMakeLists.txt may see:
# https://cmake.org/examples/

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
# 
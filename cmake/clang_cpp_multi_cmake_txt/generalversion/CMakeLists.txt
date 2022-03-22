# Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
# Reference: <https://stackoverflow.com/a/68360488/10846570>

cmake_minimum_required(VERSION 3.0.0...3.22 FATAL_ERROR)
# CMake Minimum Required Version

project(cxx_project_manual
  VERSION
    0.1.0
  DESCRIPTION
    "A project to manual compile, debug using CMake"
  LANGUAGES
    CXX
)

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
# Notice: this three command need to be changed for mac
# Control where the static and shared libraries are built so that on windows
# we don't need to tinker with the path to run the executable

# defines targets and sources
add_subdirectory(apps)

# contains an "external" library we will link to
add_subdirectory(common_external_library)

# enable testing and define tests
# using test to catch bugs
include(CTest)
enable_testing()
add_subdirectory(interface_test_bug)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
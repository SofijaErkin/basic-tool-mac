# Reference: https://medium.com/@dexterchan_44737/visual-studio-code-build-and-debug-a-c-with-cmake-on-mac-os-7633bc59bf34
cmake_minimum_required(VERSION 3.0.0...3.22 FATAL_ERROR)
# CMake Minimum Required Version : 


project(main_Sub_Test 
  VERSION 
    0.1.0
  DESCRIPTION
    "A project to test subCMake build, compile"
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

# include_directories(${CMAKE_CURRENT_LIST_DIR}/pet/*.h) # Notice: have changed!

# set(SOURCES petCom.cpp pet/Pet.cpp) # Notice: have changed!


include(CTest)
enable_testing()

# add_executable(petCom ${SOURCES})
add_executable(main main.cpp)

# contains an petActive we will use to 
add_subdirectory(petActive)

target_link_libraries(main
  PRIVATE
    petActive
  )

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

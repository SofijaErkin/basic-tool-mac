# Reference: https://medium.com/@ivan.mejia/c-development-using-visual-studio-code-cmake-and-lldb-d0f13d38c563
cmake_minimum_required(VERSION 3.0)
# make sure to use as minimum version of cmake the 3.0
project(hello_vsc)
# set the project’s name to “hello-vac”
set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_STANDARD_REQUIRED True)
set(SOURCE hello_vsc.cpp)
# the source code of our project is in “hello-vsc.cpp”

include(CTest)
enable_testing()

add_executable(${PROJECT_NAME} ${SOURCE})
# add more files separated by one or more spaces and finally we set our
# executable’s using the same name we use as the project name and declaring the
# sources code to be included during the build process.

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
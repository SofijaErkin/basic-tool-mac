cmake_minimum_required(VERSION 3.0)
# make sure to use as minimum version of cmake the 3.0
project(hello-vsc)
# set the project’s name to “hello-vac”
set(SOURCE hello-vsc.cpp)
# the source code of our project is in “hello-vsc.cpp”
add_executable(${PROJECT_NAME} ${SOURCE})
# add more files separated by one or more spaces and finally we set our
# executable’s using the same name we use as the project name and declaring the
# sources code to be included during the build process.

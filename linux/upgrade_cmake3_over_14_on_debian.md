# Debian Manually Upgrade CMake over 3.14

## deps

    build-essential, libtool, autoconf, unzip, wget

## download from source and compile install

    sudo wget -O cmake-3.14.6.tar.gz https://cmake.org/files/v3.14/cmake-3.14.6.tar.gz

    tar zxvf cmake-3.14.6.tar.gz

    cd cmake-3.14.6 && pwd && ls -a

    cmake -DCMAKE_INSTALL_PREFIX=/usr .

But terminal output:

    CMake Error at CMakeLists.txt:4 (cmake_minimum_required):

      CMake 3.1...3.12 or higher is required.  You are running version 3.0.2

    -- Configuring incomplete, errors occurred!

So, install `cmake3.1` before install `cmake3.14`.

    sudo wget -O cmake-3.1.0.tar.gz  https://cmake.org/files/v3.1/cmake-3.1.0.tar.gz

    tar zxvf cmake-3.1.0.tar.gz

    cd cmake-3.1.0 && pwd && ls -a

    cmake -DCMAKE_INSTALL_PREFIX=/usr . 

    make

    sudo make altinstall

## refer

[Installing CMake.](https://cmake.org/install/)

[How do I install the latest version of cmake from the command line?](https://askubuntu.com/a/865294)

[CMake on Linux CentOS 7, how to force the system to use cmake3?](https://stackoverflow.com/a/48842999/10846570)

[How to upgrade cmake in Ubuntu?](https://askubuntu.com/a/829311)

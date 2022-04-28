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

So, to fix the upstairs, install `cmake3.1` before install `cmake3.14`.

    sudo wget -O cmake-3.1.0.tar.gz  https://cmake.org/files/v3.1/cmake-3.1.0.tar.gz

    tar zxvf cmake-3.1.0.tar.gz

    cd cmake-3.1.0 && pwd && ls -a

    cmake -DCMAKE_INSTALL_PREFIX=/usr . 

    make

    make install

But terminal output:

    -- Install configuration: ""

    CMake Error at cmake_install.cmake:36 (file):
  
      file cannot create directory: /usr/doc/cmake-3.1.  Maybe need

      administrative privileges.

    Makefile:66: recipe for target 'install' failed

    make: *** [install] Error 1

to fix the upstairs:

    sudo make install

Notice:

"`make install`" will replace the older version of Applications under

`/usr/bin/`, "`make altinstall`" will not replace the older version of the APP

with installing under `/usr/local/bin`.

If not use the older version of Applications, just use "`make install`";

If may be use the older version of Applications or do not to mix the new

and the older, just use "`make altinstall`".

Also, continue compile install `CMake 3.14`:

    cmake -DCMAKE_INSTALL_PREFIX=/usr .

    make

    sudo make install

## refer

[Installing CMake.](https://cmake.org/install/)

[How do I install the latest version of cmake from the command line?](https://askubuntu.com/a/865294)

[CMake on Linux CentOS 7, how to force the system to use cmake3?](https://stackoverflow.com/a/48842999/10846570)

[How to upgrade cmake in Ubuntu?](https://askubuntu.com/a/829311)

[ソースコードからのビルドとインストール (Ubuntu Linux編)](https://choreonoid.org/ja/manuals/latest/install/build-ubuntu.html)

[[Linux][cmake] 最新のcmakeをインストールする方法](https://qiita.com/koara-local/items/9d01c6bb9dd93563b7c6)

[linux - 最新のcmakeバージョンを再インストールする方法は？](https://jablogs.com/detail/54946)

[Install CMake 3.14.0 on Debian 10(Chinese).](https://blog.csdn.net/KoBelieve8/article/details/117108843)

[Install other version CMake or upgrade CMake version on Linux(Chinese).](https://blog.csdn.net/weixin_41010198/article/details/109343347)

[Upgrade CMake over 3.17(Chinese).](https://blog.51cto.com/u_15262460/2882793)

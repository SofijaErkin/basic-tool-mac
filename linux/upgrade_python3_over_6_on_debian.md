# [Debian Manually Upgrade Python3 over 3.6](https://gist.github.com/SofijaErkin/98c7bbe0d815030488058e1967c2d518)

## deps

    build-essential, libncurses5-dev, libncursesw5-dev, libreadline6-dev,

    libdb5.3-dev, libgdbm-dev, libsqlite3-dev, libssl-dev, libbz2-dev,

    libexpat1-dev, liblzma-dev, zlib1g-dev, ca-certificates, make, wget, curl,

    llvm, xz-utils, tk-dev, libffi-dev, libedit-dev

## library so soft link

    ln /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /usr/local/libcrypto.so

    ln /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 /usr/local/libssl.so

## download package and compile install

    cd 

    sudo wget https://www.python.org/ftp/python/3.6.10/Python-3.6.10.tar.xz

    tar -Jxvf Python-3.6.10.tar.xz

    cd Python-3.6.10 && pwd && ls -a

    ./configure --enable-optimizations --enable-shared

    make -j8

    sudo make altinstall

Manually installed(`git clone/wget/curl`) python3(`python3.6`) active files are

located at "`/usr/local/bin`", library files are located at "`/usr/local/lib`"

Default installed(`apt/apt-get install`) python3(`python3.4`) is located at

"`/usr/bin`".

Just use this to enter `Python3.6`:

    python3.6

But output error:

    python3: error while loading shared libraries: libpython3.6m.so.1.0: cannot open shared object file: No such file or directory

The upstairs fixed:

    cd ~

    vim ~/.zshrc

Add the below code to `~/.zshrc`:

    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/

Also, active the hewable `.zshrc`:

    source ~/.zshrc

## set to default python3

    sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.4 30

    sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.6 50

## refer

[How to install Python 3.6?](https://unix.stackexchange.com/a/332658)

[How to install Python from future releases of Debian.](https://unix.stackexchange.com/a/340482)

[How to Upgrade Python to 3.9.](https://phoenixnap.com/kb/upgrade-python)

# Debian Manually Install Vim

## About Debian11

Update April 23 EST PM 9:43

[-(VIM);](https://gist.github.com/SofijaErkin/2a2bbfb2917c6a5a4ecc281e48cb63f8)

VIM deps:

    +(gcc), $(build-essential), $(libncurses5-dev),  +(python3-dev), +(cmake), 
    
    +(libncursesw5-dev), +(libgtk2.0-dev), $(libcairo2-dev), $(libatk1.0-dev),

    $(libx11-dev), +(libxpm-dev), +(libxt-dev), +(ruby-dev), +(lua5.2), 

    +(libperl-dev), $(make), $(ruby), +(liblua5.2-dev), +(mercurial), $(perl),

    +(git), $(wget).

If use "`sudo apt install vim`", then VIM do not support Python3. Just use this

code to check:

    vim --version|grep python3

So we need to uninstall apt's installed VIM, and manually install VIM.

Just use this code to uninstall VIM:

    sudo apt remove vim

Also, "`VIM`" has changed from `-(VIM)` to `-((VIM))`.

[+((VIM));](https://gist.github.com/SofijaErkin/6b836186f81184d5913ca791a32a7b55#debian8)

Notice:

Python@3.9 on Debian config-dir:

    /usr/lib/python3.9/config-3.9-x86_64-linux-gnu

[Manually make VIM problems.](https://gist.github.com/SofijaErkin/985437aebaf0c4d28ee2a88b6f91f66b)

## Debian8

First, install Vim's deps:

    sudo apt install <deps>

deps: gcc, build-essential, libncurses5-dev,  python3-dev/python2-dev(python-dev),

cmake, libncursesw5-dev,  vim-gtk/libgtk2.0-dev, libatk1.0-dev(already installed),

libcairo2-dev(already installed),libx11-dev(already installed), libxpm-dev,

libxt-dev, ruby-dev, lua5.2(already installed), libperl-dev, make, ruby,

liblua5.2-dev, mercurial, perl, git/wget.

Download from source:

    cd ~/

    git clone https://github.com/vim/vim.git 
Config:

    cd vim 

    ./configure \

    --disable-selinux \

    --with-features=huge \

    --enable-multibyte \

    --enable-fontset \

    --enable-xim \

    --with-x \

    --with-gnome \

    --enable-python3interp=yes \

    --with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu \

    --enable-rubyinterp=yes \

    --enable-perlinterp=yes \

    --enable-luainterp=yes \

    --enable-gui=gtk2 \

    --enable-cscope \

    --with-compiledby="thepoy" 

Notice:

    --enable-sniff \

    configure: WARNING: unrecognized options: --enable-sniff

Compile:

    make
Install:

    sudo make install

In order to easily uninstall Vim, there should be install "checkinstall" to

uninstall Vim via "`dpkg -r vim`": see ["`uninstall_vim_via_checkinstall_debian.md`"](https://gist.github.com/SofijaErkin/551088989c45248f5c483ab1415c16f5).

By default, `Vim` is installed to `/usr/local/bin/vim`. And the configure file

under `/usr/local/share/vim`.

In order to use `vim` on shell, there should be add a soft link to `/usr/bin`,

    cd /usr/bin 

    sudo ln -s /usr/local/bin/vim /usr/bin/vim && 

    pwd && ls -al | grep "vim"

then, output:

    /usr/bin

    lrwxrwxrwx  1 root   root          18 Apr 20 06:58 vim -> /usr/local/bin/vim

    -rwxr-xr-x  1 root   root     1006960 Apr  1  2015 vim.tiny

Or

    ln -s /usr/local/bin/vim /usr/bin/vim &&

    ln -s /usr/local/bin/vimtutor /usr/bin/vimtutor &&

    ln -s /usr/local/bin/gvimtutor /usr/bin/gvimtutor &&

    ln -s /usr/local/bin/xxd /usr/bin/xxd && 

or use `update-alternatives` to make sure `vim82` too be the default opening

app for `Vim`.

    cd /usr/bin

    sudo unlink vim && 

    sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1000 && 

    pwd && ls -al | grep "vim"          

then, output:

    update-alternatives: using /usr/local/bin/vim to provide /usr/bin/vim (vim) in auto mode

    /usr/bin

    lrwxrwxrwx  1 root   root          21 Apr 20 07:55 vim -> /etc/alternatives/vim

    -rwxr-xr-x  1 root   root     1006960 Apr  1  2015 vim.tiny

Update:(20 April 2022 EST AM4:22)

Big Big Big notice:

Please add this code to your Vim configuration file `~/.vimrc`, to enable the

key `delete` with deleting empty line, empty byte or back space. As I know, the

manually installed `Vim` should add that line.

    set backspace=indent,eol,start

After `set nocompatible              " be iMproved, required` under `~/.vimrc`.

Update:(19 April 2022 EST PM6:00)

if `--prefix=default address` and `make`,

then `Vim` architecture:

    ./usr/local

    |_bin
    
    |    |__vim

    |    |__xxd

    |    |__...

    |_share

        |_vim

            |_vim82

                |__...

if `--prefix=/usr/local/bin` and `make VIMRUNTIMEDIR=/usr/local/share/vim/vim82`,

then `Vim` architecture:

    ./usr/local/bin

    |_bin

    |    |__vim

    |    |__xxd

    |    |__...

    |_share

        |_vim

            |_vim82
            
                |__...

if `--prefix=/usr/local/vim8` and `make VIMRUNTIMEDIR=/usr/local/share/vim/vim82`,

then `Vim` architecture:

    ./usr/local/vim8

    |_bin

    |    |__vim

    |    |__xxd

    |    |__...

    |_share

        |_vim

            |_vim82
            
                |__...
if `--prefix=/usr/local` and `make VIMRUNTIMEDIR=/usr/local/share/vim/vim82`,

then `Vim` architecture should be:

    ./usr/local

    |_bin

    |    |__vim

    |    |__xxd

    |    |__...

    |_share

        |_vim

            |_vim82
            
                |__...
But `Vim` do not found any thing about it!

refer:

[How to Install Latest Vim Editor in Linux.](https://tecadmin.net/install-vim-linux/)  

[How to install Vim on Debian.](https://linuxpip.org/install-vim-debian/)  

[Install Vim8 and config python3 development on Linux(Chinese).](https://www.jianshu.com/p/63af5d83b6bd)

[CentOS or Debian install Vim with from version 7.4 update to version 8.1(Chinese).](https://blog.csdn.net/microsoft2014/article/details/82870300)

[Debian8 install Vim8(Chinese).](https://www.cnblogs.com/busor/p/5876931.html)

[Build Vim into IDE one step by step(Chinese).](https://sq.sf.163.com/blog/article/197471096162713600)

[WSL2 Debian compile and install Vim8.2 with Python3 supporter(Chinese).](https://ganquan.org/2021/12/01/wsl2-debian-compile-install-vim-8-2-enable-python3/)

[Debian install python supported Vim(Chinese).](https://blog.csdn.net/MK_chan/article/details/89047170)

[Linux install Vim8 and config Vim plug(Chinese).](https://blog.csdn.net/rankun1/article/details/78775404)

[Build VIM into IDE step by step(Chinese BLog)](https://sq.sf.163.com/blog/article/197471096162713600)

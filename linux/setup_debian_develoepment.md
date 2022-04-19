# Build Debian Development

## 1. Git

Refer:
1.[Manually install Git.](https://gist.github.com/SofijaErkin/2b70beb264de57c9f8f7c80517766a89)

## 2. zsh && oh-my-zsh

Refer:

[debian/wiki/Zsh](https://wiki.debian.org/Zsh).

[How to install and configure Zsh on Linux](https://computingforgeeks.com/how-to-install-and-configure-zsh-shell-on-linux/).

[Using oh-my-zsh build Linux Shell](https://sysin.org/blog/linux-zsh/).

## 3. Curl

[How to Install curl on Debian 10/11 in 6 Easy Steps.](https://www.cyberithub.com/how-to-install-curl-on-debian-10-11-in-6-easy-steps/)

## 4. [shellcheck](https://packages.debian.org/sid/shellcheck)

Update(16 April 2022 06:40AM):

The better is that update macOS and Xcode.

I take 87 minutes to update macOS(about 12GB) from 10.12.6 to 12.3.1. Version

12.3.1 is cool! Good Job, Apple!

Xcode13(about 12.78GB) take me 20 minutes to download and take 3.5 hours to install.

Also, Xcode13 is cool now.

After that, I also unshallow homebrew-core and homebrew-cask:

    git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-core fetch --unshallow

    git -C /usr/local/Homebrew/Library/Taps/homebrew/homebrew-cask fetch --unshallow

And, update the brew:

    brew update

I know that i should update the software in time in case of usage.

----------------------------------Do not see-----------------------------------

Do not use brew to install shellcheck on mac.

---------------------Or you could manually install shellcheck------------------

Shell static syntax check tool.

[Online using.](https://www.shellcheck.net/)

For VSCode: vscode-shellcheck.

For Vim: integrated via ALE, Neomake or Syntastic.

ALE deps:clang cppcheck pylint shellcheck golint.

## 5. Vim

    sudo apt install

deps: gcc, build-essential, libncurses5-dev,  python3-dev/python2-dev(python-dev),

cmake, libncursesw5-dev,  vim-gtk/libgtk2.0-dev, libatk1.0-dev(already installed),

libcairo2-dev(already installed),libx11-dev(already installed), libxpm-dev,

libxt-dev, ruby-dev, lua5.2(already installed), libperl-dev, make, ruby,

liblua5.2-dev, mercurial, perl, git/wget.

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

Download from source:

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

"\"

"--prefix=/usr/local/bin/vim"

Notice:

    --enable-sniff \

    configure: WARNING: unrecognized options: --enable-sniff

Compile:

    make
"`make VIMRUNTIMEDIR=/usr/local/share/vim`"
Install:

    sudo make install

By default, `Vim` is installed to `/usr/local/bin/vim`. And the configure file

under `/usr/local/share/vim`.

In order to use `vim` on shell, there should be add a soft link to `/usr/bin`,

    ln -s /usr/local/bin/vim /usr/bin/vim &&

    ln -s /usr/local/bin/vimtutor /usr/bin/vimtutor &&

    ln -s /usr/local/bin/gvimtutor /usr/bin/gvimtutor &&

    ln -s /usr/local/bin/xxd /usr/bin/xxd 

or use `update-alternatives` to make sure `vim82` too be the default opening

app for `Vim`.

    update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1000

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

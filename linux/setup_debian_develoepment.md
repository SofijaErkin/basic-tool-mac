# Build Debian Development

## 1. Git

Refer:
1.[Manually install Git.](https://gist.github.com/SofijaErkin/2b70beb264de57c9f8f7c80517766a89)

## 2. zsh && oh-my-zsh

Update April 23 EST PM 9:22

On Debian11 Notices:

1.Checkout the current SHELL: "`echo $SHELL`".

2.Choose the current SHELL to root:

    su -

    sudo chsh -s /usr/bin/zsh

3.Choose the current SHELL to the current user:

    sudo chsh -s /usr/bin/zsh usr_name

And, restart or reboot your guest machine(Especially Debian11).

4.Using oh-my-zsh every time you change [themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) on Debian 11, restart terminal to make

reality that!!!

Refer:

[debian/wiki/Zsh](https://wiki.debian.org/Zsh).

[How to install and configure Zsh on Linux](https://computingforgeeks.com/how-to-install-and-configure-zsh-shell-on-linux/).

[Using oh-my-zsh build Linux Shell(Chinese)](https://sysin.org/blog/linux-zsh/).

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

## 5. [Vim](https://gist.github.com/SofijaErkin/6b836186f81184d5913ca791a32a7b55)

## 6. Vundle(Vim install Package Manage)

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

Edit [`~/.vimrc`](https://gist.github.com/SofijaErkin/83bd8ee7b75362d4c017ca33744b511a#manually-installed-vim-config), and  enter

VIM Normal state to active `~/.vimrc` with "`:source ~/.vimrc`".

## 7.[NERDTree](https://gist.github.com/SofijaErkin/ae3505742a431c343f54a9a995fd7e2b)

## 8.YouCompleteMe

deps:

    build-essential, cmake, clang, python3-dev/python-dev
`clang` for C/C++ auto complete.

compile and install:

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

Notice:

    YouCompleteMe requires Python >= 3.6.0; your version of Python is 3.4.2 (default, Sep 14 2019, 00:52:38)

[Fixed, `python3.6.10`](https://gist.github.com/SofijaErkin/98c7bbe0d815030488058e1967c2d518).continue:

   python3 install.py --clang-completer --system-libclang

Notice:

    CMake 3.14 or higher is required.  You are running version 3.0.2

[Fixed, `cmake3.14.6`](https://gist.github.com/SofijaErkin/f307c2c0220b8392633959e450646f1e).continue:

    python3 install.py --clang-completer --system-libclang

Notice:

    CMake Error at CMakeLists.txt:232 (message):
  
      Your C++ compiler does NOT fully support C++17.

    -- Configuring incomplete, errors occurred!

    See also "/tmp/ycm_build_urixuwl7/CMakeFiles/CMakeOutput.log".

    FAILED

    ERROR: the build failed.

    NOTE: it is *highly* unlikely that this is a bug but rather that this is a problem with the configuration of your system or a missing dependency. Please carefully read CONTRIBUTING.md and if you're sure that it is a bug, please raise an issue on the issue tracker, including the entire output of this script (with --verbose) and the invocation line used to run it.

    The installation failed; please see above for the actual error. In order to get more information, please re-run the command, adding the --verbose flag. If you think this is a bug and you raise an issue, you MUST include the *full verbose* output.

    For example, run:/usr/bin/python3 /home/parallels/.vim/bundle/YouCompleteMe/third_party/ycmd/build.py --clang-completer --system-libclang --verbose

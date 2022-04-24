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

Edit [`~/.vimrc`](https://gist.github.com/SofijaErkin/83bd8ee7b75362d4c017ca33744b511a#manually-installed-vim-config), and active `~/.vimrc` with "`source ~/.vimrc`".

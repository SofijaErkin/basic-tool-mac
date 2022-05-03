# MacOS/Linux Manually Install ShellCheck

[shellcheck](https://packages.debian.org/sid/shellcheck)

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

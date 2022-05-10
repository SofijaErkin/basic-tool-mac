# MacOS/Linux Manually Install YouCompleteMe

This is used to notice syntax complete for C/C++ and Python.

## Deps

### Debian(Linux)

    build-essential, cmake, clang, python3-dev/python-dev, python3, gcc

`clang` for C/C++ auto complete.

### MacOS

    Vundle(VIM plugin manager), cmake, python3, VIM(support Python3),

    system call(),

## Compile and Install and config

### for Debian(Linux)

#### Install on Debian

    git clone --recursive https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle

Or

install via `Vundle`and add this to `~/.vimrc`

    Plugin 'Valloric/YouCompleteMe'    " install YouCompleteMe, with autoupdate via

                                       " vundle

and use `ESC` key to quit editing status, just use "`:PluginInstall`" to

download `YouCompleteMe`. `YouCompleteMe` is about 240MB, and will take

30 seconds to download via `Vundle`.

if you use `VIM` plugin manager `Vundle` to download `YouCompleteMe`,

the downloaded `.ycm_extra_conf.py` under `~/.vim/bundle/YouCompleteMe/` is

[here](https://gist.github.com/SofijaErkin/01223a0f96f28ed0d0f8e87eec9b2d78).

#### Compile and Config on Debian

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

the upstairs compiling configuration file `.ycm_extra_conf.py` liking this.

Or

    python3 install.py --clang-completer

the upstairs compiling configuration file `.ycm_extra_conf.py` liking that.

the upstairs compiling installing command takes 3 minutes to compile installing.

The compiling configuration file `.ycm_extra_conf.py` will be located under

 `~/.vim/bundle/YouCompleteMe/third_party/ycmd/`.

The upstairs will complete C/C++(via clang-completer) and Python(default support

) with `YouCompleteMe`.

Notice:

if use "`python3 install.py --clang-completer`" to compile installing, the

"`:YcmDebugInfo`" will be:

    Printing YouCompleteMe debug information...

    -- Resolve completions: Never

    -- Client logfile: /tmp/ycm_fwvvdvzn.log

    -- Server Python interpreter: /usr/bin/python3

    -- Server Python version: 3.9.2

    -- Server has Clang support compiled in: True

    -- Clang version: clang version 13.0.0 (<https://github.com/ycm-core/llvm> 02d1fa3185f1beeebb182b8911bfe09d3429707f)

    -- Extra configuration file found and loaded

    -- Extra configuration path: /home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py

    -- Server running at: <http://127.0.0.1:44381>

    -- Server process ID: 4802

    -- Server logfiles:

    --   /tmp/ycmd_44381_stdout_jv2c3psh.log

    --   /tmp/ycmd_44381_stderr_5c0v_iw9.log

#### Others on Debian

If you want to support Java, Go, PHP, just install their compiler default-jdk

(for Java), php(for PHP), golang-go(for Go), then just add their configuration

compile installing `--java-completer`(for Java), `--go-completer`(for Go) and

(I don't know about php-completer)when calling `install.py`.

### for MacOS

#### Install on MacOS

install via `Vundle`,

Add this to `~/.vimrc`

    Plugin 'Valloric/YouCompleteMe'    " install YouCompleteMe, with autoupdate via

                                       " vundle

and use `ESC` key to quit editing status, just use "`:PluginInstall`" to

download `YouCompleteMe`. `YouCompleteMe` is about 240MB, and will take

56 seconds to download via `Vundle`.

the downloaded `.ycm_extra_conf.py` under `~/.vim/bundle/YouCompleteMe/` is

[there](https://gist.github.com/SofijaErkin/dfb17d47ea1700957a777ed5ffdd64e7).

#### Compile and Config on MacOS

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

Or

    python3 install.py --clang-completer

the upstairs compiling installing takes 2 minutes to compile installing.

Notice:

if use "`python3 install.py --clangd-completer`" to compile installing, the

"`:YcmDebugInfo`" will be:

    Printing YouCompleteMe debug information...

    -- Resolve completions: Never

    -- Client logfile: /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycm_b7v3dril.log

    -- Server Python interpreter: /usr/local/opt/python@3.9/bin/python3.9

    -- Server Python version: 3.9.12

    -- Server has Clang support compiled in: False

    -- Clang version: None

    -- Extra configuration file found and loaded

    -- Extra configuration path: /Users/yq/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py

    -- Server running at: <http://127.0.0.1:53097>

    -- Server process ID: 17102

    -- Server logfiles:

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_53097_stdout_hokuct2s.log

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_53097_stderr_5thjdf8m.log

#### Others on MacOS

If you want to support Javascript, Ruby, Perl, just install their compiler node

(or nodejs) and npm(for JavaScript), ruby(for Ruby), perl(for Perl), then just

add their configuration compile installing `--ts-completer`(for JS and TS), (I

don't know ruby-completer and perl-compiler) when calling `install.py`.

Notice: [install Java JDK for macOS](https://mkyong.com/java/how-to-install-java-on-mac-osx/#homebrew-install-java-8-on-macos).

## [Config](https://itecnote.com/tecnote/c-vim-youcompleteme-configuration/)

## GoTo Defines

add this to "`~/vimrc`":

    " locate any functions, variables or classes via cursor, just use VIM

    " command (:YouCompleteMe GoTo), then will jump into that defines,

    " mapping key_button F6 with the goTo function of YouCompleteMe,

    " that means goTo defines after touching down F6 button,

    " just use (ctrl+o) to goBack that source location.

    map <F6> :YcmCompleter GoTo<CR>

## Fix Debian(Linux) problems While Compiling install YouCompleteMe

### A

Notice:

    YouCompleteMe requires Python >= 3.6.0; your version of Python is 3.4.2 (default, Sep 14 2019, 00:52:38)

[Fixed, `python3.6.10`](https://gist.github.com/SofijaErkin/98c7bbe0d815030488058e1967c2d518).continue:

   python3 install.py --clang-completer --system-libclang

Fixed upstairs. Install the python`3.6.10`.

### B

Notice:

    CMake 3.14 or higher is required.  You are running version 3.0.2

[Fixed, `cmake3.14.6`](https://gist.github.com/SofijaErkin/f307c2c0220b8392633959e450646f1e).continue:

    python3 install.py --clang-completer --system-libclang

Fixed upstairs. Install the cmake`3.14.6`.

### C

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

Fixed upstairs. Install the gcc`8.2`.

gcc>=8, clang>=7.

## Refer

[YouCompleteMe: a code-completion engine for Vim](https://github.com/ycm-core/YouCompleteMe#youcompleteme-a-code-completion-engine-for-vim).

[Below are the instructions for installing YouCompleteMe on Mac OS X](https://gist.github.com/ChengLong/6208775).

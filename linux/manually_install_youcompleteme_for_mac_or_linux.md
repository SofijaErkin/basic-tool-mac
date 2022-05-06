# MacOS/Linux Manually Install YouCompleteMe

This is used to notice syntax complete for C/C++ and Python.

## deps

    build-essential, cmake, clang, python3-dev/python-dev, python3, gcc

`clang` for C/C++ auto complete.

compile and install:

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

## [config](https://itecnote.com/tecnote/c-vim-youcompleteme-configuration/)

## goTo defines

add this to "`~/vimrc`":

    " locate any functions, variables or classes via cursor, just use VIM

    " command (:YouCompleteMe GoTo), then will jump into that defines,

    " mapping key_button F6 with the goTo function of YouCompleteMe,

    " that means goTo defines after touching down F6 button,

    " just use (ctrl+o) to goBack that source location.

    map <F6> :YcmCompleter GoTo<CR>

## fix problems

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

Fixed upstairs. Install the gcc`7.3`.

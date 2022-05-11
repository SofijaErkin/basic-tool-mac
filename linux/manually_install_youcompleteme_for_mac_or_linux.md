# MacOS/Linux Manually Install YouCompleteMe

This is used to notice syntax complete for C/C++ and Python.

## Usage

Ycm use `tab` to accept the completion, pushing `tab`at all time will

right-handwise accept all the completion, pushing "`shift` + `tab`" will

left-handwise accept the completion.

Notice, We use console `VIM`on Debian, use `MacVim` on MacOS. So, We need to

 set a new key mapping during using console `VIM`(Debian) because the console

 will not transform "`shift` + `tab`" to that console `VIM`.

Others, if we use plugin `ultisnaps`, there maybe have some conflicting key

mapping, also, we need to set new key mapping again. Could use `ctrl` + `space`

 to trigger completion, but there will be conflicted with the input method

 editor, also, need to set key mapping.

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

if you use the upstairs to download `YouCompleteMe`, you need to enter the

directory of `YouCompleteMe` using "`cd ~/.vim/bundle/YouCompleteMe`" to update

`YouCompleteMe` code using "`git pull --rebase`" with making sure your

your directory  is under "`~/.vim/bundle/YouCompleteMe on git:master o`" or

"`~/.vim/bundle/YouCompleteMe on git:master x`"every time after you upgraded

your PC/Laptop Operation.

System.

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

#### Compile installing on Debian

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

Or

    python3 install.py --clang-completer

the upstairs compiling installing command takes 3 minutes to compile installing.

The compiling configuration file `.ycm_extra_conf.py` liking [that](https://gist.github.com/SofijaErkin/7de23a66d70b7c6924fcd701423fdef7) will be located under

 `~/.vim/bundle/YouCompleteMe/third_party/ycmd/`.

The upstairs will complete C/C++(via clang-completer) and Python(default support

) with `YouCompleteMe`.

Just Just Just use "`:YcmDiags`" to make sure whether `YouCompleteMe` is being

successfully installed or not?

Notice:

if use "`python3 install.py --clang-completer --system-libclang`" to compile installing, the

"`:YcmDebugInfo`" will be:

    Printing YouCompleteMe debug information...

    -- Resolve completions: Never

    -- Client logfile: /tmp/ycm_hy1ogqqg.log

    -- Server Python interpreter: /usr/bin/python3

    -- Server Python version: 3.9.2

    -- Server has Clang support compiled in: True

    -- Clang version: Debian clang version 11.0.1-2

    -- Extra configuration file found and loaded

    -- Extra configuration path: /home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py

    -- Python completer debug information:

    --   Python interpreter: /usr/bin/python3

    --   Python root: /home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd

    --   Python path: ['/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd', '/home/foruo/.vim/bundle/You

    CompleteMe/third_party/ycmd/third_party/bottle', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/

    third_party/regex-build', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/frozendict', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/jedi_deps/jedi', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/jedi_deps/parso', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/watchdog_deps/watchdog/build/lib3', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/watchdog_deps/pathtools', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/waitress', '/usr/lib/python39.zip', '/usr/lib/python3.9', '/usr/lib/python3.9/lib-dynload', '/usr/local/lib/python3.9/dist-packages', '/usr/lib/python3/dist-packages', '/home/foruo/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/jedi_deps/numpydoc']

    --   Python version: 3.9.2

    --   Jedi version: 0.18.0

    --   Parso version: 0.8.1

    -- Server running at: <http://127.0.0.1:50651>

    -- Server process ID: 8693

    -- Server logfiles:

    --   /tmp/ycmd_50651_stdout_zp798qqf.log

    --   /tmp/ycmd_50651_stderr_3x0se3qs.log

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

#### Compile installing on MacOS

    cd ~/.vim/bundle/YouCompleteMe

    python3 install.py --clang-completer --system-libclang

Or

    python3 install.py --clang-completer

the upstairs compiling installing takes 2 minutes to compile installing.

Big Big Big notice:

just use "`:YcmDiags`" to make sure whether `YouCompleteMe` is being successfully

installed or not?

If output "`No warnings or errors detected.`", that means `YouCompleteMe` has

been successfully installed;

If output "`YCM has not yet been compiled`", that means `YouCompleteMe` has

been successfully downloaded;

If output

    Native filetype completion not supported for current file, cannot force recompilation.

, the upstairs means Your current file is not Python file, C file or C++ file.

Notice:

if use "`python3 install.py --clang-completer`" to compile installing, the

"`:YcmDebugInfo`" will be:

    Printing YouCompleteMe debug information...

    -- Resolve completions: Never

    -- Client logfile: /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycm_069agh87.log

    -- Server Python interpreter: /usr/local/opt/python@3.9/bin/python3.9

    -- Server Python version: 3.9.12

    -- Server has Clang support compiled in: True

    -- Clang version: clang version 13.0.0

    -- Extra configuration file found and loaded

    -- Extra configuration path: /Users/yq/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py

    -- Server running at: <http://127.0.0.1:54620>

    -- Server process ID: 26002

    -- Server logfiles:

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_54620_stdout_h15x9zuz.log

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_54620_stderr_py5q02rj.log

if use "`python3 install.py --clang-completer --system-libclang`" to compile

installing, the "`:YcmDebugInfo`" will be:

    Printing YouCompleteMe debug information...

    -- Resolve completions: Never

    -- Client logfile: /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycm_lqxn0rhg.log

    -- Server Python interpreter: /usr/local/opt/python@3.9/bin/python3.9

    -- Server Python version: 3.9.12

    -- Server has Clang support compiled in: True

    -- Clang version: Apple clang version 13.1.6 (clang-1316.0.21.2.3)

    -- Extra configuration file found and loaded

    -- Extra configuration path: /Users/yq/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py

    -- Server running at: <http://127.0.0.1:54838>

    -- Server process ID: 29037

    -- Server logfiles:

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_54838_stdout_th7bsjk_.log

    --   /var/folders/zs/_m5zmn613_vgyyszpxwcyx980000gn/T/ycmd_54838_stderr_yo6gp49v.log

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

### Config

refer unit `YouCompleteMe` at [`~/.vimrc`](https://gist.github.com/SofijaErkin/83bd8ee7b75362d4c017ca33744b511a).

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

[Installation of vim plug-in YouCompleteMe for Mac](https://programmer.group/installation-of-vim-plug-in-youcompleteme-for-mac.html).

[YouCompleteMe: a code-completion engine for Vim](https://github.com/ycm-core/YouCompleteMe#youcompleteme-a-code-completion-engine-for-vim).

[Below are the instructions for installing YouCompleteMe on Mac OS X](https://gist.github.com/ChengLong/6208775).

[Install and Config VIM auto-complete plugin YouCompleteMe(Chinese Blog)](https://www.i4k.xyz/article/yangkuanqaz85988/48886367).

# Plugins for VIM

## Optional software Settings

just use clang-format for an example:

    sudo update-alternatives --install /usr/local/bin/clang-format clang-format /usr/local/Cellar/clang-format@5/5.0.2/bin/clang-format 99

    sudo update-alternatives --install /usr/local/bin/clang-format clang-format /usr/local/Cellar/clang-format/14.0.3/bin/clang-format 100 

Or [refer](https://gist.github.com/ffeu/6ffb75d8e8c7d92c0fbeb4b036599c33?permalink_comment_id=2761559#gistcomment-2761559):

    brew unlink clang-format@5

    brew link clang-format

## Clang format

### for Git

#### only format one

only format the changed file(e.g:`.c` or `.h` or `.cpp`), format that changed

code or changed commit using `git-clang-format`:

    usage: git clang-format [OPTIONS] [<commit>] [<commit>] [--] [<file>...]

Notice:

there is best way to format that code during no changes and no commit.

#### multiple format

integrant format to version controller git, add the below to `.gitconfig`:

    clang-format-cached = !git diff -U0 --no-color --relative --cached | clang-format-diff -p1 -i && git status

    clang-format-head = !git diff -U0 --no-color --relative HEAD^ | clang-format-diff -p1 -i && git status

`git clang-format-cached`: format the changed code under workspace;

`git clang-format-head`: format the commit code under local repository;

we could format code using hands, then checkout using format tool to push.

#### auto-format machine

refer: [git with clang-format to auto format(Chinese Blog)].

### for VIM

install clang-format via bundle for vim by adding the below to `~/.vimrc`

    Plugin 'rhysd/vim-clang-format'

then just use key `esc` to enter `VIM` normal status, and use `VIM` command

 `:PluginInstall` to install plugin for `VIM`.

#### config VIM on Debian

##### find out clang-format and clang-format configuration file

###### find out clang-format file

checkout file `clang-format`:

   where clang-format && which clang-format && whereis clang-format

on my Debian shows:

    /usr/bin/clang-format

    /bin/clang-format

continue check out the upstairs two directory:

input:

    cd /usr/bin/ && pwd && ls -al | grep "clang-format"

output:

    /usr/bin/clang-format -> clang-format-11-> ../lib/llvm-11/bin/clang-format

continue input:

    cd /bin && pwd && ls -al | grep "clang-format"

continue output:

    /bin/clang-format -> clang-format-11-> ../lib/llvm-11/bin/clang-format

then check `../lib/llvm-11/bin/`:

then input

    cd /usr/lib/llvm-11/bin/ && pwd && ls -al | grep "clang-format"

then output

    /usr/lib/llvm-11/bin/clang-format

All in all, `clang-format-11.0`:

the `clang-format` was downloaded under `/usr/lib/llvm-11/bin/`

with it's soft link `clang-format` under `/usr/bin/` and another soft link

`clang-format` under `/bin/` on Debian, and it's version is `11.0`.

###### find out clang-format configuration file

just use the below:

    dpkg -L clang-format | grep clang-format.py

and the upstairs output:

    /usr/share/vim/addons/syntax/clang-format.py

continue search under `/usr/share/vim/addons/syntax/`:

input

    cd /usr/share/vim/addons/syntax/ && pwd && ls -al | grep "clang-format"

output

    /usr/share/vim/addons/syntax/clang-format.py -> clang-format-11.py

others use this command to check out clang-format configuration file again:

then input

    find / -name "clang-format.py"

then output

    /usr/share/vim/addons/syntax/clang-format.py

    /usr/share/clang/clang-format-11/clang-format.py 

finally enter `/usr/share/clang/clang-format-11` to find out:

finally input

    cd /usr/share/clang/clang-format-11 && pwd && ls -al | grep "clang-format"

finally output

    /usr/share/clang/clang-format-11/clang-format.py 

In conclude, the `clang-format` configuration files `clang-format-11.0.py`:

one was downloaded by `VIM` under `/usr/share/vim/addons/syntax/`, also another

 was downloaded by `Debian` under `/usr/share/clang/clang-format-11`.

Config via `~/.vimrc`, add the below to `~/.vimrc` for Debian:

    " refer

    " https://mesos.readthedocs.io/en/0.23.1/clang-format/

    " mapping enables clang-format for NORMAL and VISUAL mode

    map <C-I> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

    " mapping adds support for INSERT mode

    imap <C-I> <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

    " Comment about the upstairs 

    " Change "C-I" to another binding if you need clang-format on a different

    " key (C-I stands for Ctrl+i)

    " With this integration you can press the bound key and clang-format will
    
    " format the current line in NORMAL and INSERT mode or the selected region

    " in VISUAL mode. The line or region is extended to the next bigger
    
    " syntactic entity.

    " refer

    " https://shengfazhu.github.io/2019/08/03/vim/

    " to format the full file

    function FormatFile()

      let l:lines="all"

      py3f /usr/share/clang/clang-format-11/clang-format.py/clang-format.py

    endfunction

    " Comment the upstairs

    " You can also pass in the variable "l:lines" to choose the range for

    " formatting. This variable can either contain "<start line>:<end line>"

    " refer 

    " https://blog.csdn.net/weixin_39609623/article/details/102080465

    "  or "all" to format the full file. 
    
    "function! Formatonsave()

    "  let l:formatdiff =1

    "   py3f /usr/share/clang/clang-format-11/clang-format.py/clang-format.py

    "endfunction

    "autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

    " auto format when leave INSERT Model

    let g:clang_format#auto_format_on_insert_leave=1

    " Comment about the two upstairs configuration for VIM

    " changing pyf to py3f: because the default version of python on Debian

    " is python2;

    " let l:lines = "all": format all the code under this project

    " let l:formatdiff = 1: only format for changing code

    " if doing all the things does not work or if clang-format.py of

    " clang-format@11.0 script in the Debian11 (clang-format-11.0) is not

    " compatible with Python 3, then download the latest clang-format.py to
    
    " replace the default clang-format.py for clang-format@11.0, refer from

    " https://stackoverflow.com/a/39781747/10846570

    " the upstairs means that we should download the latest clang-format.py via
    
    " the below

    " wget https://llvm.org/svn/llvm-project/cfe/trunk/tools/clang-format/clang-format.py

    " Others,
    
    " clang-format-3.8.py is compatible with Python 2;

    " clang-format-4.0.py is compatible with Python 3; 

    " clang-format-6.0.py is compatible with Python 3;

    " I do know whether clang-format-11.0.py is compatible with Python 3 or not

#### config VIM on macOS

If you have installed clang-format via brew, the `clang-format` has been

downloaded under `/usr/local/Cellar/clang-format@5/`, with it's executable file

`clang-format` under `/usr/local/Cellar/clang-format@5/5.0.2/bin/clang-format`,

with it's configuration file `clang-format.py` under

`/usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py`.

Also, the `clang-format@5.0` will create soft link executable file

`clang-format` under `/usr/local/bin/`, that's why while I check where the

clang-format is no matter using `where clang-format` or which `clang-format`

or even `whereis clang-format`, that always shows `/usr/local/bin/`.

If you want to check where soft link `/usr/local/bin/clang-format` linked to?

Just use the command to check

`cd /usr/local/bin/ && pwd && ls -al | grep "clang-format"`, liking mine

showing

`/usr/local/bin/clang-format -> ../Cellar/clang-format@5/5.0.2/bin/clang-format`.

And the clang-format@5.0 soft link create configuration file `clang-format.py`

 under `/usr/local/share/clang/`, with linking to
 
 `/usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py`.

Config via `~/vimrc`, add the below to `~/.vimrc` for macOS:

    " use leader + f in NORMAL Model

    map <leader>f :py3f  /usr/local/share/clang/clang-format.py<cr>

    " use leader + f in INSERT Model

    imap <leader>f <c-o>:py3f /usr/local/share/clang/clang-format.py<cr>

    " set clang-format range to all file

    function FormatFile()

      let l:lines="all"

      py3f /usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py

    endfunction

    " Or Format during saving

    "function! Formatonsave()

    "  let l:formatdiff =1

    "  py3f /usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py

    "endfunction

    "autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

    " auto format when leave INSERT Model

    let g:clang_format#auto_format_on_insert_leave=1

    " Comment about the two upstairs configuration for VIM

    " changing pyf to py3f: because the default version of python on macOS

    " is python2;

    " let l:lines = "all": format all the code under this project

    " let l:formatdiff = 1: only format for changing code

    " if doing all the things does not work or if clang-format.py of

    " clang-format@5.0 script in the macOS12.3.1 (clang-format-5.0) is not

    " compatible with Python 3, then download the latest clang-format.py to
    
    " replace the default clang-format.py for clang-format@5.0, refer from

    " https://stackoverflow.com/a/39781747/10846570

    " the upstairs means that we should download the latest clang-format.py via
    
    " the below

    " wget https://llvm.org/svn/llvm-project/cfe/trunk/tools/clang-format/clang-format.py

    " Others,
    
    " clang-format-3.8.py is compatible with Python 2;

    " clang-format-4.0.py is compatible with Python 3; 

    " clang-format-6.0.py is compatible with Python 3;

    " I do know whether clang-format-5.0.py is compatible with Python 3 or not

### for VSCode

just use the extension `Clang-Format`, author `xaver`.

Settings on VSCode: `User Status(Not Workspace) -> Clang-Format Configuration`,

for Executable(clang-format executable path): `/usr/local/bin/clang-format`,

Notice: during logo into remote machine, there will be need executable file

 liking `/bin/clang-format`, the configuration of clang-format on remote

 machine is the same as the configuration for VSCode.

for Fallback Style:`Google` or `google`,

for Language > Apex: Enable: check out and pull down, check the box `☑️`.

for Style: `file`.

Store the configuration file of clang-format extension `.clang-format` at the

 same level with `.vs`(under the root content of project).

Copy the standard configuration of Google for `~/.clang-format`:

    clang-format -style=google -dump-config > .clang-format

or create by the configuration file of `.clang-format` by yourself :

    BasedOnStyle: Google
  
    IndentWidth: 4

    AccessModifierOffset: -3
  
    AllowAllParametersOfDeclarationOnNextLine: true
  
    BinPackParameters: false
  
    SortIncludes: false

the upstairs refer: [Clang 5 documentation->Clang-Format Style Options](https://releases.llvm.org/5.0.2/tools/clang/docs/ClangFormatStyleOptions.html).

then just use hot-key mapping `Shift + ALT + F` to format the project files.

Using auto-formatting during saving is the better way. Just use `command +`,

open the search engine of Setting, type `Format`, find out `Format on Save`,

check out and pull down, check the box `☑️`.

refer: VSCode config clang-format and set auto-format during saving on MacBook.

### for macOS or Debian

#### for Debian

To install

    sudo apt install clang-format

#### for macOS

maybe problem:

1.input

    cd /usr/local/bin && pwd && ls -al | grep "clang-format"

output

    clang-format -> ../Cellar/clang-format@5/5.0.2/bin/clang-format

    git-clang-format -> ../Cellar/clang-format@5/5.0.2/bin/git-clang-format

2.input

    cd /usr/local/share/clang/ && pwd && ls -al | grep "clang-format"

output

    clang-format-bbedit.applescript

    clang-format-diff.py

    clang-format-sublime.py

    clang-format-test.el

    clang-format.el

    clang-format.py

3.input

    cd /usr/local/Cellar && pwd && ls -al | grep "clang-format"

output

    clang-format@5

4.input

    clang-format --version

output

    clang-format version 5.0.2 (tags/RELEASE_502/final)

5.input

    brew install clang-format

output

    Error: The `brew link` step did not complete successfully

    The formula built, but is not symlinked into /usr/local

    Could not symlink bin/clang-format

    Target /usr/local/bin/clang-format

    is a symlink belonging to clang-format@5. You can unlink it:
  
      brew unlink clang-format@5

    Possible conflicting files are:

    /usr/local/bin/clang-format -> /usr/local/Cellar/clang-format@5/5.0.2/bin/clang-format

    /usr/local/bin/git-clang-format -> /usr/local/Cellar/clang-format@5/5.0.2/bin/git-clang-format

    Error: Could not symlink share/clang/clang-format-bbedit.applescript

    Target /usr/local/share/clang/clang-format-bbedit.applescript

    is a symlink belonging to clang-format@5. You can unlink it:
  
      brew unlink clang-format@5

## Comment Plugin for VIM

we need to comment code block sometimes, also, could insert comment symbol

under "`visual block`" mode, just use plugin `nerdcommenter`this time,

"`shift` + `V`" enter `visual block` mode, chose that needed comment code

block, just use `leader + cc` to comment, and `leader + cu` to disable

comment. Add the below to `~/.vimrc`

    Plugin 'scrooloose/nerdcommenter'  " Comment Plugin for VIM

                                       " use shift + V to enter visual block

                                       " status, just use command leader + cc 

                                       " to comment code block, use leader +

                                       " cu to disable

## Indent Plugin for VIM

Display differ indent while loop, condition occurs in code, recommend plugin

`vim-indent-guides`, add the below to `~/.vimrc` to install and config:

    Plugin 'nathanaelkane/vim-indent-guides'

    " Auto-Start with VIM

    let g:indent_guides_enable_on_vim_startup=1

    " visually display indent from the second level

    let g:indent_guides_start_level=2

    " color block width

    let g:indent_guides_guide_size=1

    " use key i to start or terminal visualization

    nmap <silent> <Leader>i <Plug>IndentGuidesToggle

## Color Plugins for VIM

### Main plugins

add this to `~/.vimrc`

    Plugin 'altercation/vim-colors-solarized'

    Plugin 'tomasr/molokai'

    Plugin 'vim-scripts/phd'

### Config color plugins for VIM method

add this to `~/.vimrc`

    " Color idea for VIM via color plugins

    set t_Co=256  " make color normally

    set background=dark

    colorscheme solarized  " solarized is the better

    " the upstairs VIM command config need to come somewhere after

    " "call vundle#end()". 

    " Also, we could chose the below two lines plugins

    "colorscheme molokai

    "colorscheme phd

## Refer

1.[Install VIM and Config plugins(Chinese blog)](https://shengfazhu.github.io/2019/08/03/vim/).

2.[VSCode config clang-format and set auto-format during saving on MacBook (Chinese Blog)](https://www.daimajiaoliu.com/daima/479600735900402).

3.[Install Tools: basic usage Clang-Format(Chinese Blog)](https://blog.csdn.net/weixin_39609623/article/details/102080465).

4.[Usage GPS for clang-format](https://www.swack.cn/wiki/001558681974020669b912b0c994e7090649ac4846e80b2000/00158131059939952d487f8b3a6425fb6d945fa40a9aa7f000).

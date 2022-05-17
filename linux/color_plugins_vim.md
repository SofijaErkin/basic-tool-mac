# Plugins for VIM

## Clang format

### for VIM

install clang-format via bundle for vim by adding the below to `~/.vimrc`

    Plugin 'rhysd/vim-clang-format'

then just use key `esc` to enter `VIM` normal status, and use `VIM` command

 `:PluginInstall` to install plugin for `VIM`.

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

The configuration file of `clang-format`:

    BasedOnStyle: google
  
    IndentWidth: 4

    AccessModifierOffset: -3
  
    AllowAllParametersOfDeclarationOnNextLine: true
  
    BinPackParameters: false
  
    SortIncludes: false

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

[Install VIM and Config plugins(Chinese blog)](https://shengfazhu.github.io/2019/08/03/vim/).

[VSCode config clang-format and set auto-format during saving on MacBook (Chinese Blog)](https://www.daimajiaoliu.com/daima/479600735900402).

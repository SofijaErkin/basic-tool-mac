# Plugins for VIM

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

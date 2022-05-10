" VIM

set runtimepath+=~/.vim_runtime

set nocp                        " forbid optional vi module

set ru                          " show the scale

set nu                          " show the line number

set cursorline                  " hightlight the current line
hi CursorLine cterm=bold

syntax on                       " enable the syntax function of VIM

set sw=2                        " auto intent 2 character

set ts=2                        " tab width 2 character

set backspace=indent,eol,start  " local cmment test line comment

syntax on

" colorscheme  default           " too dark to comment

set autoindent                  " keep the same intent with the uppstairs

set ruler                       " display the location of cursor at the right

                                " buttom

set incsearch                   " show match points while the fuzzy search

source ~/.vim_runtime/vimrcs/basic.vim

source ~/.vim_runtime/vimrcs/filetypes.vim

source ~/.vim_runtime/vimrcs/plugins_config.vim

source ~/.vim_runtime/vimrcs/extended.vim



" ctags

"set tags=~/tags



" taglist

"let Tlist_Exit_OnlyWindow = 1

"let Tlist_Use_Right_Window =1

"map <F2> :TlistToggle<CR>

"map <F3> :TlistOpen<CR>



" NERDTree config

map <F4> :NERDTreeToggle<CR>  

" F4 control the content tree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary") | q | endif

" exit vim during the current winter being the last content tree winer



" YouCompleteMe Configuration

set runtimepath+=~/.vim/bundle/YouCompleteMe

set completeopt=longest,menu  " cancel the pop after completing

let g:ycm_collect_identifiers_from_tags_files = 1  " enable YCM engine based tag

let g:ycm_collect_identifiers_from_comments_and_strings = 1

                               " used to comment and string contents

let g:syntastic_ignore_files=[".*\.py$"]

let g:ycm_seed_identifiers_with_syntax = 1  " complete the key_words of syntax

let g:ycm_complete_in_comments = 1

let g:ycm_confirm_extra_conf = 0

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']

                              " touch buttons mapping, make trouble tab button

                              " if do not have the upstaris code line

let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:ycm_complete_in_comments = 1  " enable the complete at comment

let g:ycm_complete_in_strings = 1  " enable the complete at string contents

let g:ycm_collect_identifiers_from_comments_and_strings = 1

                               " bookmark the comment and string contents into

                               " the complete library

"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:ycm_show_diagnostics_ui = 0  " disable the checkout syntax

nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

                              " goto the define of the functions

let g:ycm_min_num_of_chars_for_completion=2

                              " complete begin at the second character

" hightlight Pmenu ctermfg=15 ctermfg=0 guifg=#000000 guibg=#111100

" change the complete backcolor into vim's backcolor

map <F6> :YcmCompleter GoTo<CR>  " mapping key_button F6 with the goTo function of YouCompleteMe



" Vundle

set nocompatible                   " be iMproved, required

filetype off                       " required

set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle 

                                   " and initialize

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

Plugin 'https://github.com/scrooloose/nerdtree.git'  

                                   " install NERDTree, file and directory 
                                   
                                   " tree
Plugin 'Valloric/YouCompleteMe'    " install YouCompleteMe, with autoupdate via

                                   " vundle

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

Plugin 'git://git.wincent.com/command-t.git'

" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



try

    source ~/.vim_runtime/my_configs.vim

catch

endtry

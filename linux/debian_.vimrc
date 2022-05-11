" VIM

set nocp                        " forbid optional vi module

set ru                          " show the scale

set nu                          " show the line number

set cursorline                  " hightlight the current line

hi CursorLine cterm=bold      

set sw=2                        " auto intent 2 character

set ts=2                        " tab width 2 character

set backspace=indent,eol,start  " local cmment test line comment

syntax on                       " enable the syntax function of VIM

"colorscheme  default           " too dark to comment

set autoindent                  " keep the same intent with the uppstairs

set ruler                       " display the location of cursor at the right

                                " buttom

set incsearch                   " show match points while the fuzzy search



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

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary" )     | q | endif

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

let g:ycm_confirm_extra_conf = 0  " close YCM during opeaning .ycm_extra_conf.py

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']

                              " touch buttons mapping, make trouble tab button

                              " if do not have the upstaris code line

let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:ycm_complete_in_comments = 1  " enable the complete at comment

let g:ycm_complete_in_strings = 1  " enable the complete at string contents 

let g:ycm_collect_identifiers_from_comments_and_strings = 1

                               " bookmark the comment and string contents into

                               " the complete library

let g:ycm_filetype_blacklist = { 'tagbar' : 1, 'nerdtree' : 1, }

                               " Set block Ycm at the below types file

let g:ycm_key_invoke_completion = '<M-;>'

                               " change hot-kay mapping about completing for C

                               " functions, from ctrl + space to ALT + ;

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let g:ycm_show_diagnostics_ui = 0  " disable the checkout syntax

let g:ycm_error_symbol = '>>'  " config Ycm show >> during occuring error

let g:ycm_warning_symbol = '>*'  " config Ycm show >* during occuring warning

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>

                               " jump into Declaration

nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>

                               " jump into Definition

map <F6> :YcmCompleter GoTo<CR>  

                               " mapping key_button F6 with the goTo function

                               " of YouCompleteMe to jump into That 
                                 
                               " definition, use ctrl+o to goback

" Notice: Ycm make jump GoTo enable via the jumplist of VIM

" jump before command: ctrl+o

" jump after command: ctrl+l

nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

                               " first jump into Definition, then jump into

                               " declaration

                               " Or Using the below VIM command setting:

"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

                               " goto the define of the functions

"nmap <F4> :YcmDiags<CR>

                               " config VIM command :YcmDiags,

                               " the upstairs VIM command opens the 
                               
                               " location-list to display error and warning,

                               " but confliting with NERDTree hot-key

let g:ycm_min_num_of_chars_for_completion=2

                               " complete begin at the second character

let g:ycm_cache_omnifunc=0     " disable cache complete, occur new complete

                               " tag every time

"hightlight Pmenu ctermfg=15 ctermfg=0 guifg=#000000 guibg=#111100

" change the complete backcolor into vim's backcolor



" Vundle

set nocompatible                   " be iMproved, required

filetype off                       " required

set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle

                                   " and initialize

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

Plugin 'https://github.com/scrooloose/nerdtree.git' 

                                   " install NERDTree, file and directory tree

Plugin 'Valloric/YouCompleteMe'    " install YouCompleteMe, with autoupdate via

                                    " vundle

call vundle#end()                  " All of your Plugins must be added before

                                   " the following line required

filetype plugin indent on          " required
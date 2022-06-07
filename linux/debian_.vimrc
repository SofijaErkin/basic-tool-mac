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

set tags=~/tags



" taglist

"let Tlist_Exit_OnlyWindow = 1

"let Tlist_Use_Right_Window =1

"map <F2> :TlistToggle<CR>

"map <F3> :TlistOpen<CR>



" Format plugin for VIM

" refer

" https://mesos.readthedocs.io/en/0.23.1/clang-format/

" mapping enables clang-format for NORMAL and VISUAL mode

map <C-I> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

" mapping adds support for INSERT mode

imap <C-I> <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

" Or using the below four VIM command

" use leader + f in NORMAL Model

"map <leader>f :py3f  /usr/share/vim/addons/syntax/clang-format.py<cr>

" use leader + f in INSERT Model

"imap <leader>f <c-o>:py3f /usr/share/vim/addons/syntax/clang-format.py<cr>

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



" Indent Plugin for VIM

" Auto-Start with VIM

let g:indent_guides_enable_on_vim_startup=1

" visually display indent from the second level

let g:indent_guides_start_level=2

" color block width

let g:indent_guides_guide_size=1

" use key i to start or terminal visualization

nmap <silent> <Leader>i <Plug>IndentGuidesToggle



" Color idea for VIM via color plugins  

set t_Co=256  " make color normally

set background=dark

" colorscheme solarized  " solarized is the better

" the upstairs VIM command config need to come somewhere after

" "call vundle#end()".

" Also, we could chose the below two lines plugins

"colorscheme molokai

"colorscheme phd



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

Plugin 'altercation/vim-colors-solarized'

                                   " color plugins, improve the color method of

                                   " VIM, the main three color plugins: the

                                   " upstairs and the below two line

Plugin 'tomasr/molokai'

Plugin 'vim-scripts/phd'

Plugin 'nathanaelkane/vim-indent-guides'  " indent Plugin

Plugin 'scrooloose/nerdcommenter'  " Comment Plugin for VIM

                                   " use shift + V to enter visual block status

                                   " just use command leader + cc to comment

                                   " just use command leader + cc to comment

Plugin 'rhysd/vim-clang-format'    " Format Plugin for VIM to directly standard

                                   " code format

Plugin 'https://github.com/vim-scripts/taglist.vim.git'

                                   " taglist plugin for VIM

call vundle#end()                  " All of your Plugins must be added before

                                   " the following line required

"colorscheme solarized  " solarized is the better

colorscheme molokai

"colorscheme phd

filetype plugin indent on          " required

                                   " taglist plugin relies on the Vim "filetype"

                                   " determine the type of the current file.

                                   " We have to turn on the Vim filetype

                                   " detection. e.g: filetype on

                                   " , Or: filetype plugin on
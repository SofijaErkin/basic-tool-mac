" VIM

" Just use VIM command `:source ~/.vimrc` to take effect or reload `.vimrc`.

set nocp                        " forbid optional vi module

set ru                          " show the scale

set nu                          " show the line number

                                " or add line numbers by checking

set cursorline                  " hightlight the current line
hi CursorLine cterm=bold

syntax on                       " enable the syntax function of VIM

set sw=4                        " auto intent 4 character for Java

                                " or change the default indentation to four 
                                
                                " spaces 

set ts=4                        " tab width 4 character for Java

                                " or Change the default tab width when printing
                                
                                " to four spaces

set textwidth=80                " allow at most 80 characters per line

set ff=unix                     " Change the default line separator to Unix

                                " even the default line ending of mac or unix

                                " is `unix`.


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



" Using DBGPavim debug Python in VIM

let g:dbgPavimPort = 9009       " Set the foldback port for let DBGPavim,

                                " the default port was 9000, monitor port 

                                " should be the same as the debugger port
                                


" ctags

set tags=~/VSCode/tags



" taglist

"set mouse=a                     " always use mouse

"let Tlist_Use_SingleClick=1     " enable single click tags goto definition 

let Tlist_Exit_OnlyWindow = 1

let Tlist_Use_Right_Window =1

let Tlist_File_Fold_Auto_Close = 1

                                " tagslist only display the current file's tag

                                " and indent the other files tags

let Tlist_Show_One_File = 1     " only display one file's tag

let Tlist_Sort_Type = 'name'  " sort tags using name

let Tlist_GainFocus_On_ToggleOpen = 1

                                " switch into cursor focus state once taglist

                                " open

let Tlist_WinWidth = 32         " set the width with 32 byte

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

                                " connect taglist with ctags

" Add nice bindings

"map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

"map <C-\> :tnext<CR>

"map t :TlistToggle              " (hot-key)Leader + t: call or close taglist 

"map <F2> :TlistToggle<CR>

"map <F3> :TlistOpen<CR>



" Format Plugin for VIM

" use leader + f in NORMAL Model

map <leader>f :py3f  /usr/local/share/clang/clang-format.py<cr>

" use leader + f in INSERT Model

imap <leader>f <c-o>:py3f /usr/local/share/clang/clang-format.py<cr>

" set clang-format range to all File    

function FormatFile()

    let l:lines="all"

    py3f /usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py 

endfunction 

" Or Format during saving

"function! Formatonsave()

"  let l:formatdiff =1

"  py3f /usr/local/Cellar/clang-format@5/5.0.2/share/clang/clang-format.py      

"autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()

" auto format when leave INSERT Model 

let g:clang_format#auto_format_on_insert_leave=1


" Comment about the two upstairs configuration for VIM

" changing pyf to py3f: because the default version of python on macOS is 

" python2 

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

" clang-format-6.0.py is compatible with Python 3;

" I do know whether clang-format-5.0.py is compatible with Python 3 or not  




" Indent Plugin for VIm

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

"colorscheme solarized  " solarized is the better

" the upstairs VIM command config need to come somewhere after

""call vundle#end()".

" Also, we could chose the below two lines plugins

"colorscheme molokai

"colorscheme phd    



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

                               " functions, from Ctrl + space to ALT + ;

"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:ycm_show_diagnostics_ui = 0  " disable the checkout syntax

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

                               " Or Using the below vim command setting:

"nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|

                               " goto the define of the functions

let g:ycm_min_num_of_chars_for_completion=2

                               " complete begin at the second character

let g:ycm_cache_omnifunc=0     " disable cache complete, occur new complete 

                               " tag every time 
                               
" hightlight Pmenu ctermfg=15 ctermfg=0 guifg=#000000 guibg=#111100

" change the complete backcolor into vim's backcolor



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

Plugin 'https://github.com/brookhong/DBGPavim.git'

                                   " Debug Python via DBGPavim in VIM 

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line

call vundle#end()            " required

"colorscheme solarized  " solarized is the better    

colorscheme molokai

"colorscheme phd

filetype plugin indent on    " required

                             " taglist plugin relies on the Vim "filetype"

                             " determine the type of the current file.

                             " We have to turn on the Vim filetype

                             " detection. e.g: filetype on

                             " , Or: filetype plugin on

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

set nocp                      " forbid optional vi module
set ru                        " show the scale
set nu                        " show the line number

" syntax on

set sw=2                      " auto intent 2 character
set ts=2                      " tab width 2 character

set nocompatible              " be iMproved, required

set backspace=indent,eol,start

" NERDTree config
map <F4> :NERDTreeToggle<CR>  " F4 control the content tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary" )     | q | endif
" exit vim during the current winter being the last content tree winer

" YouCompleteMe Configuration
" set completeopt=longest,menu
" cancel the pop after completing
" hightlight Pmenu ctermfg=15 ctermfg=0 guifg=#000000 guibg=#111100
" change the complete backcolor into vim's backcolor

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'https://github.com/scrooloose/nerdtree.git' " install NERDTree, file and directory tree.

call vundle#end()             " All of your Plugins must be added before the following line required
filetype plugin indent on     " required
set nocp                      " forbid optional vi module
set ru                        " show the scale
set nu                        " show the line number

" syntax on

set sw=2                      " auto intent 2 character
set ts=2                      " tab width 2 character

set nocompatible              " be iMproved, required

set backspace=indent,eol,start

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle/vim " set the runtime path to include Vundle and initialize

call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

call vundle#end()             " All of your Plugins must be added before the following line required
filetype plugin indent on     " required
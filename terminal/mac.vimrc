" VIM

" Just use VIM command `:source ~/.vimrc` to take effect or reload `.vimrc`.

set runtimepath+=~/.vim_runtime

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
" Reference:https://averywagar.com/post/vim-java/
" Open when no files were speficied on vim launch
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Toggle nerdtree
map <F4> :NERDTreeToggle<CR> 
" F4 control the content tree 
" or map <C-n> :NERDTreeToggle<CR>

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



" reference:https://averywagar.com/post/vim-java/
" Deoplete.nvim
" start deoplete let g:deoplete#enable_at_startup = 1
" Less spam let g:deoplete#auto_complete_start_length = 2
" Use smartcase
let g:deoplete#enable_smart_case = 1
" Setup completion sources
let g:deoplete#sources = {}
" IMPORTANT: PLEASE INSTALL JAVACOMPLETE2  AND ULTISNIPS OR DONT ADD THIS LINE!
" =====================================
"let g:deoplete#sources.java = ['jc', 'javacomplete2', 'file', 'buffer', 'ultisnips']
" =====================================
" use TAB as the mapping
inoremap <silent><expr> <TAB>
    \ pumvisible() ?  "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "" {{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction "" }}}
" Vim-Javacomplete2
" Java completion
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"autocmd FileType java JCEnable
" ALE
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
"
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘✘'
let g:ale_sign_warning = '⚠⚠'
"
" Disable or enable loclist at the bottom of vim
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0
"
" Setup compilers for languages
let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac'],
      \  'c++': ['clang++'],
      \  'c': ['clang']
      \ }
"
" Loc List (ALE Output)
" Open and close ALEs output window with leader-e leader-w
" Loc List
map <leader>e :lopen<CR>
map <leader>w :lclose<CR>
" refer: https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Linting
" ale: https://github.com/dense-analysis/ale.
" For more information on the options ALE offers, consult :help ale-options
" for global options and :help ale-integration-options for options specified
" to particular linters.
" Configuring UltiSnips
" Trigger configuration. Do not use <tab> if you use 
" https://github.com/Valloric/YouCompleteMe.
"
" Since we are already using Deoplete, and using tab with both doesn't work
" nice use <c-j> instead
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
" Configuring TagBar
" Ctrl-b to open Tagbar
map <C-b> :TagbarToggle<CR>
" Configuring CtrlP.vim
" Map Ctrl-p to open Ctrl-p.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"
" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
" Configuring Quick Compile
" Auto compile java with leader-m
" Easy compile java in vim
autocmd FileType java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C.%#
" Configuring External Tools
" Use RipGrep (RG) with Ctrlp
" Make sure RipGrep is installed
function! CtrlPCommand()
  let c = 0
  let wincount = winnr('$')
  " Don't open it here if current buffer is not writable (e.g. NERDTree)
  while !empty(getbufvar(+expand("<abuf>"),"&buftype")) && c < wincount
    exec 'wincmd w'
    let c = c + 1
  endwhile
  exec 'CtrlP'
endfunction
let g:ctrlp_cmd = 'call CtrlPCommand()'

"RipGrep
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
let g:ctrlp_custom_ignore = {
      \ 'dir':  '',
      \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.meta|\.zip|\.rar|\.ipa|\.apk',
      \ }



" Refer: https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Refactorings
" Configuring vim-swap: https://github.com/machakann/vim-swap.
" g<: swaps the item under the cursor with the former item. 
" g>: swaps the item under the cursor with the latter item.
" gs works more interactive. 
" Configuring vim-commentary: https://github.com/tpope/vim-commentary.
" Use gcc to comment out a line (takes a count), 
" gc to comment out the target of a motion 
" (for example, gcap to comment out a paragraph), 
" gc in visual mode to comment out the selection, 
" and gc in operator pending mode to target a comment. 
" Configuring jqno-extractvariable.vim :
" https://github.com/jqno/jqno-extractvariable.vim.
"nmap <leader>e <Plug>(extractVariableNormal)
"vmap <leader>e <Plug>(extractVariableVisual)
" The visual mode mapping will extract the selection as a variable.
" The normal mode mapping will first select something, and then extract that
" selection as a variable.
" Navigation 
" Configuring Vista:https://github.com/liuchengxu/vista.vim.
" For navigating code semantically, It hooks into the LSP via CoC to display
" symbols from your code in a sidebar.
" Vista Open/Close vista window for viewing tags or LSP symbols;
" Vista! Close vista view window if already opened
" Vista!! Toggle vista view window
" Configuring vim-gutentags: https://github.com/ludovicchabant/vim-gutentags.
" :call pathogen#helptags() to generate the documentation tags
" (how ironic, eh?),
" and you can access Gutentags' help pages with help gutentags.
" Debugging
" use print statements instead of a debugger.
" Running code
" Using a small Vimscript wrapper can call a Python script to quickly run a
" unit test or a Java class with a main method;
" (the upstairs Vimscript wrapper) 
" https://github.com/jqno/dotfiles/blob/1e4ccbefc511662fe8bfe09080a3b4ee173dae53/vim/plugin/runjava.vim.
" (the upstairs Python script)
" https://github.com/jqno/dotfiles/blob/1e4ccbefc511662fe8bfe09080a3b4ee173dae53/scripts/runjava.py.
" java or JUnit uses Dispatch to run all your class this asynchronously.
" Configuring Dispatch: https://github.com/tpope/vim-dispatch.
" The core of Vim's compiler system is :make, a command similar to :grep
" that runs a build tool and parses the resulting errors. 
" Completions
" Configuring CoC: https://github.com/neoclide/coc.nvim.
" refer ~/.vimrc: https://github.com/neoclide/coc.nvim#example-vim-configuration.
" Please use command like:verbose imap <tab> to make sure that your keymap has
" taken effect. 
" CoC: That said, it currently provides the best experience by far: it has the
" most complete implementation of the LSP and provides many quality-of-life
" features such as fuzzy searching in completions.
" Configuring CoC extension
" coc-java: https://github.com/neoclide/coc-java. 
"
" coc-metals: https://github.com/scalameta/coc-metals.
" 



" Vundle

set nocompatible                   " be iMproved, required

filetype off                       " required

set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle 

                                   " and initialize

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

" Refer:https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Navigation
" NERDTree:https://github.com/preservim/nerdtree.
Plugin 'https://github.com/scrooloose/nerdtree.git'
" or Plugin 'scrooloose/nerdtree'

                                   " install NERDTree, file and directory 
                                   
                                   " tree

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" Git wrapper
Plugin 'tpope/vim-fugitive'
" it’s useful to do a quick git blame
" reference:
" https://github.com/tpope/vim-fugitive.


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

" Reference: https://averywagar.com/post/vim-java/.
" Install Deoplete.nvim 
" Also, YouComplete do support the autocompletion of Java language, please
" reference: https://github.com/ycm-core/YouCompleteMe#java-semantic-completion
" Code completion
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
" Install Vim-Javacomplete2
" fatal: unable to access 'https://github.com/junegunn/vim-javacomplete2.git/':
" HTTP/2 stream 1 was not closed cleanly before end of the underlying stream
" fatal: unable to access 'https://github.com/
" junegunn/vim-javacomplete2.git/': Recv failure: Operation timed out
" remote: Repository not found.
" fatal: Authentication failed for 
" 'https://github.com/junegunn/vim-javacomplete2.git/', so comment the below
" Java-completion
"Plugin 'junegunn/vim-javacomplete2', {'for': 'java'} " Load only for java files 
" Install ALE
" refer: https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Linting
" A.L.E. to do linting in the background, set up CoC to report its linting
" issues through A.L.E., so that any errors and warnings can be presented to
" me in a unified way.
"Plugin 'w0rp-ale'
" error: RPC failed; curl 56 Recv failure:
" Connection reset by peer
" error: 1987 bytes of body are still expected
" fetch-pack: unexpected disconnect while reading sideband packet
" fatal: early EOF
" fatal: fetch-pack: invalid index-pack output
"Plugin 'dense-analysis/ale'
" Try to use vim pack to install ale using the belwo code:
" mkdir -p ~/.vim/pack/plugins/start
" git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/plugins/start/ale
" Install UltiSnips
" Snippet manager
Plugin 'SirVer/ultisnips'
" Install TagBar
" a tool that shows you the methods variables and more in a buffer to the right
" of your file
Plugin 'majutsushi/tagbar'
" Install CtrlP.vim
" a great fuzzy finder which can be configured to use faster tools than grep. 
" It can search buffers, files, and more!
Plugin 'ctrlpvim/ctrlp.vim'

" reference: https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Color scheme
" reversal.vim: https://github.com/jqno/reversal.vim.
" Reversal.vim does the opposite, and emphasizes identifiers instead. 
Plugin 'jqno/reversal.vim'
" Refactorings
" vim-swap: https://github.com/machakann/vim-swap.
Plugin 'machakann/vim-swap'
" vim-commentary: https://github.com/tpope/vim-commentary.
" fatal: remote error: access denied or repository
" not exported: /vim/commentary.git
"Plugin 'git://tpope.io/vim/commentary.git'
"Plugin 'https://github.com/tpope/vim-commentary.git'
Plugin 'tpope/vim-commentary'
" jqno-extractvariable.vim: https://github.com/jqno/jqno-extractvariable.vim.
Plugin 'jqno/jqno-extractvariable.vim'
" Navigation
" Vista:https://github.com/liuchengxu/vista.vim.
" For navigating code semantically, It hooks into the LSP via CoC to display
" symbols from your code in a sidebar.
Plugin 'liuchengxu/vista.vim'
" vim-gutentags: https://github.com/ludovicchabant/vim-gutentags.
" It will (re)generate tag files as you work while staying completely out of
" your way. 
Plugin 'ludovicchabant/vim-gutentags'
" Debugging
" use print statements instead of a debugger.
" e.g: Vimspector paired with coc-java-debug.
" Vimspector: https://github.com/puremourning/vimspector.
" coc-java-debug: https://github.com/dansomething/coc-java-debug.
" Running code
" To quickly run a unit test or a Java class with a main method, 
" written a Python script that I can call from Vim,
" (the upstairs Python script)
" https://github.com/jqno/dotfiles/blob/1e4ccbefc511662fe8bfe09080a3b4ee173dae53/scripts/runjava.py.
" using a small Vimscript wrapper.
" (Vimscript wrapper)
" https://github.com/jqno/dotfiles/blob/1e4ccbefc511662fe8bfe09080a3b4ee173dae53/vim/plugin/runjava.vim.
" Dispatch to run all this asynchronously.
" Dispatch: https://github.com/tpope/vim-dispatch.
Plugin 'tpope/vim-dispatch'
" Completions
" CoC: https://github.com/neoclide/coc.nvim.
" Use release branch (recommended)
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Or build from source code by using yarn: https://yarnpkg.com
"
" error: RPC failed; curl 56 Recv failure:Connection reset by peer
" error: 3297 bytes of body are still expected
" fetch-pack: unexpected disconnect while reading sideband packet
" fatal: early EOF
" fatal: fetch-pack: invalid index-pack output
"
" [coc.nvim] build/index.js not found, 
" please install dependencies and compile coc.nvim by: yarn install
" the upstairs because coc.nvim Requirements  node >= 14.14!
"
" Just install yarn before install COC, use the below to install yarn
" curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
" > WARNING: GPG is not installed, integrity can not be verified!
" > Extracting to ~/.yarn...
" > Adding to $PATH...
" > We've added the following to your ~/.zshrc
" > If this isn't the profile of your current shell then please add the following to your correct profile:
" export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
" > Successfully installed Yarn X.XX.XX! Please open another terminal where the `yarn` command will now be available.
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" [coc.nvim] build/index.js not found, 
" please install dependencies and compile coc.nvim by: yarn install
" Notice: use cd ~/.vim/bundle/coc.nvim && yarn install to install dependencies
" if error happensagain, use 
" cd ~/.vim/bundle/coc.nvim && yarn install && yarn build 
" or cd ~/.vim/bundle/coc.nvim && git checkout release
" refer: https://github.com/neoclide/coc.nvim/issues/3258.
" 
" CoC extension: coc-java, coc-metals;
" coc-java: https://github.com/neoclide/coc-java.
" coc-metals: https://github.com/scalameta/coc-metals.
Plugin 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
Plugin 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}



" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line

call vundle#end()            " required

"colorscheme solarized  " solarized is the better    

"colorscheme molokai

"colorscheme phd

" refer: https://jqno.nl/post/2020/09/09/my-vim-setup/.
" Color scheme
" reversal.vim: https://github.com/jqno/reversal.vim.
colorscheme reversal 

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

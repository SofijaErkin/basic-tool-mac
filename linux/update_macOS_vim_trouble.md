# Updated macOS makes Vim trouble

while type `"vim xxx"`, then:

    Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments

    Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments

    Press ENTER or type command to continue

Solution:

[It can be solved temporarily by removing the "-complete" arg](https://github.com/amix/vimrc/issues/645#issuecomment-880528000) of the lines that

report errors.

refer:

[E1208: Error detected while processing /usr/share/vim/vimfiles/plugin/fugitive.vim](https://github.com/tpope/vim-fugitive/issues/1791)

[E1208 error #645](https://github.com/amix/vimrc/issues/645)

OR,

    Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments
    
    Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments
    
    Error detected while processing /Users/yq/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim:

    line  304:E108: No such variable: "key"

Fixed!

For :

   Error detected while processing /Users/yq/.vim/bundle/vim-fugitive/plugin/fugitive.vim:

    line  410: E1208: -complete used without allowing arguments

    line  411: E1208: -complete used without allowing arguments 

fixed with:

    cd /Users/yq/.vim/bundle/vim-fugitive/plugin/

    git pull --rebase 
For :

   Error detected while processing /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/02tlib.vim:

    line   77: E1208: -complete used without allowing arguments 

fixed with:

    cd /Users/yq/.vim_runtime/sources_non_forked/tlib/plugin/
    
    git pull --rebase

For:

   Error detected while processing /Users/yq/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim:

    line  304:E108: No such variable: "key" 

fixed with:

reinstall `YouCompleteMe` via `Vundle` on `VIM`.

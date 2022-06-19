# NERDTree for VIM

Add to `~/.vimrc`, back VIM normal state with command "`:BundleInstall`" to

install:

    call vundle#begin()

    ...

    Plugin 'https://github.com/scrooloose/nerdtree.git'

    ...

    call vundle#end()

Add NERDTree(File Content Tree) configuration to `~/.vimrc`:

    " NERDTree config

    map <F4> :NERDTreeToggle<CR>  " F4 control the content tree

    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary" ) | q | endif                   
    
    " exit vim during the current winter being the last content tree winer

Also,

reopen and active `~/.vimrc`, use "`F4`" to open file content tree,

use key `UP` and `DOWN` to move between the below and upstairs content tree,

use key `ENTER` to open file under content tree.

And, the [NERDTree Keyboard Shortcuts](https://cheatography.com/msstar846/cheat-sheets/nerdtree/):

click "`CTRL+w+w`" to switch windows between the file content tree window and

 the file editing window. Cursor just use "`Ctrl+w+h`" to focus the left tree

 content, and "`Ctrl+w+l`" to focus the right file display window.

Also,

"`o`" to open and jump to file at the current window,

"`go`" to open but not jump to file at the current window,

"`t`" to open and jump to bookmarks at the current window,

"`T`" to open but not jump to bookmarks at the current window,

"`gT`" to switch the next bookmark,

"`gt`" to switch the upstairs bookmark,

"`:tabc`"(VIM command) to close the current bookmark.

Refer:

[Build VIM into IDE step by step(Chinese BLog)](https://sq.sf.163.com/blog/article/197471096162713600)

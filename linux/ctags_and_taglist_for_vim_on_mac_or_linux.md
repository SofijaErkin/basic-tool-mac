# MacOS/Linux install Ctags and Taglist for VIM

(Debian 11)Debian's default `ctags` is that `ctags (GNU Emacs 27.1)`.

(MacOS10.12.6->upgrade_to->MacOS12.3.1)macOS's default `ctags` is `the Unix ctags utility` that is under

`/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ctags`.

The taglist plugin will not work with the GNU ctags or the Unix ctags utility.

So, we need to install the other ctags called `exuberant-ctags`(Debian) or

`ctags-exuberant`(macOS).

## install ctags and taglist

### install taglist

Pre-Requisite: `ctags` should be installed to use `taglist` plugin. But it is

 not a must to generate the tag list manually by `ctags` command for using

`taglist` plugin.

I just use vundle manager to install taglist plugin here, adding the below to

`~/.vimrc`:

    Plugin 'https://github.com/vim-scripts/taglist.vim.git'

                                       " taglist plugin for VIM

And Do not forget the below to add the `~/.vimrc`:

    filetype plugin indent on          " required

                                       " taglist plugin relies on the Vim "filetype"

                                       " determine the type of the current file.

                                       " We have to turn on the Vim filetype

                                       " detection. e.g: filetype on

                                       " , Or: filetype plugin on

Also, we need to config the taglist plugin for `VIM`, just add the below config

in `~/.vimrc`.

    " taglist

    let Tlist_Exit_OnlyWindow = 1   " exit the VIM while taglist window be the last

    let Tlist_Use_Right_Window =1   " let taglist display on the right window

    let Tlist_File_Fold_Auto_Close = 1

                                " tagslist only display the current file's tag

                                " and indent the other files tags

    let Tlist_Show_One_File = 1     " only display one file's tag

    let Tlist_Sort_Type = 'name'  " sort tags using name

    let Tlist_GainFocus_On_ToggleOpen = 1

                                " switch into cursor focus state once taglist

                                " open

    let Tlist_WinWidth = 32         " set the width with 32 byte

    let Tlist_Ctags_Cmd = '/usr/bin/ctags'

                                " connect taglist with ctags

    "map <F2> :TlistToggle<CR>

    "map <F3> :TlistOpen<CR>

### install ctags

#### ctags On Debian

Just use this to download and install the need `ctags`(`exuberant-ctags`),

    sudo apt install ctags

and you will get:

    Reading package lists... Done

    Building dependency tree... Done

    Reading state information... Done

    Package ctags is a virtual package provided by:
  
      universal-ctags 0+git20200824-1.1
  
      exuberant-ctags 1:5.9~svn20110310-14

    You should explicitly select one to install.

    E: Package 'ctags' has no installation candidate

then using the suggestion,

    sudo apt install exuberant-ctags 

and checkout the version of `ctags`:

    ctags --version

The Debian will install `exuberant-ctags` under `/usr/bin/`, and will create

soft link `ctags` under `/etc/alternatives/`, also, that `ctags` under

`/usr/bin` will link to `/etc/alternatives/ctags`.

Then go to the directory where your source code is located. I have stored all

my programming source code under ~/my_project_debian directory.

    cd && mkdir my_project_debian && pwd && ls -a 

    cd my_project_debian && pwd && ls -al

    ctags -R *

The `ctags` command will create a filename `tags` the will contain all required

information (`tags`) about the all typed program files.

Finally, add the `tags` file into `~/.vimrc` to auto load the `tags` under

project once `VIM` reboot/start.

    cd && vim ~/.vimrc      
    
    set tags += /home/my_debian_user_name/my_project_debian  

Or

    cd && vim ~/.vimrc      
    
    set tags = /home/my_debian_user_name/my_project_debian/tags

OR, we could let the `ctags` command function under `/home/my_debian_user_name`

and that added to `~/.vimrc` should be:

    cd && vim ~/.vimrc

    set tags = ~/tags

Nothing could be better!

### Usage ctags Or GOTo function using ctags

Locate to target tags, search tags/goto tags definition using tag command:

    vi -t tag-name

    :ta tag-name

    :tag tag-name

Find tags using search pattern:

    : /tag-name

Move to the next same tags/goes to the next tag in that list:

    :tnext

    "Or

    :tn

Move to the previous tags/goes to the previous tag in that list:

    :tprev
    
    "Or 
    
    :tp

Move to the last tags/ goes to the function which is in the last of the list:

    :tlast
    
    "Or
    
    :tl

Move to the first tags/goes to the function which is in the first of the list:

    :tfirst

    "Or

    :tf

To select a particular tag from a list of tags after opening the source code

file/shows the list, use the following command:

    :tselect

    "Or

    :ts

Show the current tags information:

    :tags

Navigate to the definition of tag from `function call`: `ctrl` + `]`, that

means when the cursor is under the function call, then press `CTRL` + `]` to go

to the function definition.

Navigate return back again to the function call from the definition using:

`Ctrl` + `t` or `Ctrl` + `o`.

Navigate through a list of function names which has the similar names, e.g:

    :ta /^get

`:ta` will go to the function definition whose name starts with `get`, and also

builds a list to navigate with the relevant functions.

## refer

1.[Integrating Vim with ctags](https://linuxhint.com/integrating_vim_ctags/).

2.[Ctags and Taglist: Convert Vim Editor to Beautiful Source Code Browser for Any Programming Language](https://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/).

3.[taglist.vim : Source code browser](https://www.vim.org/scripts/script.php?script_id=273).

4.[Adding Exuberant CTag support to VIM](https://gist.github.com/lancebecker/1428183).

5.[Install usage ctags and taglist on VIM(Chinese Blog)](https://blog.csdn.net/baidu_35679960/article/details/79111140).

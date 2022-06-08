# MacOS/Linux install Ctags and Taglist for VIM

(Debian 11)Debian's default `ctags` is that `ctags (GNU Emacs 27.1)`.

(MacOS10.12.6->upgrade_to->MacOS12.3.1)macOS's default `ctags` is `the Unix ctags utility` that is under

`/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ctags`.

The taglist plugin will not work with the GNU ctags or the Unix ctags utility.

So, we need to install the other ctags called `exuberant-ctags`(Debian) or

`ctags-exuberant`(macOS).

## install ctags and taglist

### usage taglist

Call/open Taglist window: `:Tlist`, `:TlistOpen`, `:TlistToggle`;

Close Taglist window: `:Tlist`, `:TlistClose`, `q`;

Switch the left/right window: `Ctrl` + `ww`;

Navigate to function definition from Taglist window: `Ctrl` + `]`, or click

on the function name in the right panel after enable single click on taglist;

Returning back again to function tag from definition: `Ctrl` + `o`;

Navigate to cursor location: `<CR>`;

Display cursor's tags on New opening window: `o`;

Show the beta definition of current cursor tag: `<Space>`, that means press

`Space` in the function name or in the variable name in the tag list window to

show the prototype (function signature) of it in the VIM status bar, e.g: click

on selectDumpableTable function from the Tag-window and press space-bar, which

displays the function signature for selectDumptableTable function in the bottom

Vim Status bar;

Viewing the total number of functions or variables in a source code file: press

`space` in the tag type in the tag list window, which shows the count of it.

e.g, when the cursor is at ‘function’ press space, which will display the total

number of functions in the current source code.

Update the tags on Taglist window: `u`;

Change sort method between name and occur: `s`;

Make big or small Taglist window: `x`;

Open an fold tag: `zo`, `+`;

Fold an tag: `zc`, `-`;

Open all fold: `zR`, `*`;

Jump to the previous file: `[[`;

Jump to the next file: `]]`;

Help tag document: `<F1>`.

After all, there is yes need to using mouse on `VIM`, just add the code to

`~/.vimrc`: `set mouse=a  " always use mouse`; or navigate to go to the

definition via setting single click tag adding the code to `~/.vimrc`:

`let Tlist_Use_SingleClick=1`.

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

    set mouse=a                     " always use mouse

    let Tlist_Use_SingleClick=1     " enable single click tags goto definition 

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

    "map t :TlistToggle              " (hot-key)Leader + t: call or close taglist

    "map <F2> :TlistToggle<CR>

    "map <F3> :TlistOpen<CR>

After all settings finish, just use `:wq` to save and quit `~/.vimrc`, exit

and restart/reboot `VIM`, use `:Tlist` or `:TlistOpen` or `TlistToggle` or

hot-key `Leader` + `t` to call tagslist.

### install ctags

#### ctags on macOS

Just use this to install that needed `ctags`(ctags-exuberant):

    brew install ctags

The MacOS will install `ctags-exuberant` under `/usr/local/Cellar/ctags/5.8_2`,

and create a soft link `ctags` under `/usr/local/bin`.

Remember to exit Terminal and reboot/restart Terminal!!!(This means macOS

update ctags to `/usr/local/bin/ctags` from `/usr/bin/ctags`)

And create tags at your directory, e.g: `/User/you_user_name` via

`cd && ctags -R *`;

Other we need to add the tags into `~/.vimrc` via `vim ~/.vimrc` with adding

the code `set tags = ~/tags` to `~/.vimrc`.

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

`vi -t tag-name`, `:ta tag-name`, `:tag tag-name`;

Find tags using search pattern: `: /tag-name`;

Move to the next same tags/goes to the next tag in that list: `:tnext`, `:tn`;

Move to the previous tags/goes to the previous tag in that list: `:tprev`,

`:tp`;

Move to the last tags/ goes to the function which is in the last of the list:

`:tlast`, `:tl`;

Move to the first tags/goes to the function which is in the first of the list:

`:tfirst`, `:tf`;

To select a particular tag from a list of tags after opening the source code

file/shows the list, use the following command: `:tselect`, `:ts`;

Show the current tags information: `:tags`;

Navigate to the definition of tag from `function call`: `ctrl` + `]`, that

means when the cursor is under the function call, then press `CTRL` + `]` to go

to the function definition.

Navigate return back again to the function call from the definition using:

`Ctrl` + `t` or `Ctrl` + `o`.

Navigate through a list of function names which has the similar names, e.g:

`:ta /^get`;

`:ta` will go to the function definition whose name starts with `get`, and also

builds a list to navigate with the relevant functions.

## refer

1.[Integrating Vim with ctags](https://linuxhint.com/integrating_vim_ctags/).

2.[Ctags and Taglist: Convert Vim Editor to Beautiful Source Code Browser for Any Programming Language](https://www.thegeekstuff.com/2009/04/ctags-taglist-vi-vim-editor-as-sourece-code-browser/).

3.[taglist.vim : Source code browser](https://www.vim.org/scripts/script.php?script_id=273).

4.[Adding Exuberant CTag support to VIM](https://gist.github.com/lancebecker/1428183).

5.[Install usage ctags and taglist on VIM(Chinese Blog)](https://blog.csdn.net/baidu_35679960/article/details/79111140).

6.[Config Taglist in VIM(Chinese Blog)](https://xiaozhou.net/install_taglist_for_vim-2013-05-26.html).

7.[Teacher book: Install Taglist for VIM(Chinese Blog)](https://blog.csdn.net/weixin_39846515/article/details/79208933).

8.[Install Taglist plugin for VIM(Chinese Blog)](https://blog.csdn.net/baidu_35679960/article/details/79111140).

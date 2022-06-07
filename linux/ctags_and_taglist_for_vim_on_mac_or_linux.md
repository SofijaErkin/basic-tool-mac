# MacOS/Linux install Ctags and Taglist for VIM

(Debian 11)Debian's default `ctags` is that `ctags (GNU Emacs 27.1)`.

(MacOS10.12.6->upgrade_to->MacOS12.3.1)macOS's default `ctags` is `the Unix ctags utility` that is under

`/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ctags`.

The taglist plugin will not work with the GNU ctags or the Unix ctags utility.

So, we need to install the other ctags called `exuberant-ctags`(Debian) or

`ctags-exuberant`(macOS).

## install ctags and taglist

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

### Usage ctags

Locate to target tags, search tags/goto tags definition using tag command:

    vi -t tag-name

    :ta tag-name

    :tag tag-name

Find tags using search pattern:

    : /tag-name

## refer

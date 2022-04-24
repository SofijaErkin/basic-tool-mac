# Tools for Debian11 via VirtualBox6.1.32 on MacOS12.3.1

Manually Install + (System Including).

    -package: not manually installed!

    +package: manually installed!

    ~package: uninstall system including, then manually installed.

    *package: manually uninstall manually installed, then use system including.

    $package: system installed.

    (package): system including.

    ((package)): installed from source.

## 1. Compiler

+(gcc);

+(gcc);

## 2. Debugger

+(GNU gdb);

## 3. Assisted Compile

+(GNU Make);

+(CMake);

## 4. SHELL

Checkout the current SHELL: "`echo $SHELL`".

Choose the current SHELL to root:

    su -

    sudo chsh -s /usr/bin/zsh

Choose the current SHELL to the current user:

    sudo chsh -s /usr/bin/zsh usr_name

And, restart or reboot your guest machine(Especially Debian11).

SHELL:

    $(GNU Bash);

    +((zsh+oh-my-zsh));

Notice:

Using oh-my-zsh every time you change [themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) on Debian 11, restart terminal to make

reality that!!!

refer:

[debian/wiki/Zsh](https://wiki.debian.org/Zsh).

[How to install and configure Zsh on Linux](https://computingforgeeks.com/how-to-install-and-configure-zsh-shell-on-linux/).

[Using oh-my-zsh build Linux Shell(Chinese)](https://sysin.org/blog/linux-zsh/).

## 4.1 Assisted SHELL

    +(ShellCheck);

## 5. Version Control

[+(git);](https://gist.github.com/SofijaErkin/2b70beb264de57c9f8f7c80517766a89)

    git deps:

    libssl-dev; libghc-zlib-dev; libcurl4-gnutls-dev; libexpat1-dev; +(gettext); 
    
    $(unzip);

## 6. Language

    +(Python);

    $(Python3);

    +(Ruby);

    $(Perl);

    +(PHP);

## 7. Editor

[-(VIM);](https://gist.github.com/SofijaErkin/6b836186f81184d5913ca791a32a7b55)

VIM deps:

    +(gcc), $(build-essential), $(libncurses5-dev),  +(python3-dev), +(cmake), 
    
    +(libncursesw5-dev), +(libgtk2.0-dev), $(libcairo2-dev), $(libatk1.0-dev),

    $(libx11-dev), +(libxpm-dev), +(libxt-dev), +(ruby-dev), +(lua5.2), 

    +(libperl-dev), $(make), $(ruby), +(liblua5.2-dev), +(mercurial), $(perl),

    +(git), $(wget).

If use "`sudo apt install vim`", then VIM do not support Python3. Just use this

code to check:

    vim --version|grep python3

So we need to uninstall apt's installed VIM, and manually install VIM.

Just use this code to uninstall VIM:

    sudo apt remove vim

Also, "`VIM`" has changed from `-(VIM)` to `-((VIM))`.

[-((VIM));](https://gist.github.com/SofijaErkin/6b836186f81184d5913ca791a32a7b55)

Notice:

Python@3.9 on Debian config-dir:

    /usr/lib/python3.9/config-3.9-x86_64-linux-gnu

Manually make VIM problem:

    /usr/include/gtk-2.0/gtk/gtktypeutils.h:236:1: warning: ‘GTypeDebugFlags’ is deprecated [-Wdeprecated-declarations]

    236 | void            gtk_type_init   (GTypeDebugFlags    debug_flags);

        | ^~~~

    /usr/include/glib-2.0/gobject/gtype.h:679:1: note: declared here

    679 | {

        | ^

    /usr/include/gtk-2.0/gtk/gtktooltips.h:73:3: warning: ‘GTimeVal’ is deprecated: Use 'GDateTime' instead [-Wdeprecated-declarations]

    73 |   GTimeVal last_popdown;

      |   ^~~~~~~~

    /usr/include/glib-2.0/glib/gtypes.h:547:8: note: declared here

    547 | struct _GTimeVal

        |        ^~~~~~~~~


    +(GNU Emacs);

    $(GNU nano);

## 8. Terminal Download

    $(GNU Wget);

    +(curl);

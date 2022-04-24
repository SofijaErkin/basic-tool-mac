# Debian11 manually install VIM from source

[-(VIM);](https://gist.github.com/SofijaErkin/2a2bbfb2917c6a5a4ecc281e48cb63f8)

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

[+((VIM));](https://gist.github.com/SofijaErkin/2a2bbfb2917c6a5a4ecc281e48cb63f8)

Notice:

Python@3.9 on Debian config-dir:

    /usr/lib/python3.9/config-3.9-x86_64-linux-gnu

[Manually make VIM problems.](https://gist.github.com/SofijaErkin/985437aebaf0c4d28ee2a88b6f91f66b)

# checkinstall easily uninstall Vim on Debian

In order to easily uninstall Vim, there should be install "checkinstall" to

uninstall Vim via "`dpkg -r vim`":

    sudo apt install checkinstall

    cd ~/vim

    sudo checkinstall 

the upstairs output:

    checkinstall 1.6.2, Copyright 2009 Felipe Eduardo Sanchez Diaz Duran
           This software is released under the GNU GPL.

    The package documentation directory ./doc-pak does not exist.

    Should I create a default set of package docs?  [y]:

type `y`;

then terminal output:

    Preparing package documentation...OK

    Please write a description for the package.

    End your description with an empty line or EOF.

    >>
type "`In order to easily uninstall vim via "dpkg -r vim", then install checkinstall`";

then terminal output:

    *****************************************

    **** Debian package creation selected***

    *****************************************

    This package will be built according to these values:

    0 -  Maintainer: [ root@yanniece-3 ]

    1 -  Summary: [ help ]

    2 -  Name:    [ vim ]

    3 -  Version: [ 20220420 ]

    4 -  Release: [ 1 ]

    5 -  License: [ GPL ]

    6 -  Group:   [ checkinstall ]

    7 -  Architecture: [ amd64 ]

    8 -  Source location: [ vim ]

    9 -  Alternate source location: [  ]

    10 - Requires: [  ]

    11 - Provides: [ vim ]

    12 - Conflicts: [  ]

    13 - Replaces: [  ]

    Enter a number to change any of them or press ENTER to continue:

type `ENTER`.

But that output:

    Installing with make install...

    ========================= Installation results ===========================

    Starting make in the src directory.

    If there are problems, cd to the src directory and run make there

    cd src && make install

    make[1]: Entering directory '/home/parallels/vim/src'

    if test -f /usr/local/bin/vim; then \

      mv -f /usr/local/bin/vim /usr/local/bin/vim.rm; \

      rm -f /usr/local/bin/vim.rm; \

    fi

    cp vim /usr/local/bin

    strip /usr/local/bin/vim

    chmod 755 /usr/local/bin/vim

    cp vimtutor /usr/local/bin/vimtutor

    chmod 755 /usr/local/bin/vimtutor

    /bin/sh ./installman.sh install /usr/local/share/man/man1 "" /usr/local/share/vim /usr/local/share/vim/vim82 /usr/local/share/vim ../runtime/doc 644 vim vimdiff evim

    installing /usr/local/share/man/man1/vim.1

    installing /usr/local/share/man/man1/vimtutor.1

    installing /usr/local/share/man/man1/vimdiff.1

    installing /usr/local/share/man/man1/evim.1

    cd ../runtime/doc; if test -z "" -a -f tags; then \
 
     mv -f tags tags.dist; fi

    generating help tags

    make[2]: Entering directory '/home/parallels/vim/runtime/doc'

    help tags updated

    make[2]: Leaving directory '/home/parallels/vim/runtime/doc'

    cd ../runtime/doc; \
 
     files=`ls *.txt tags`; \

     files="$files `ls *.??x tags-?? 2>/dev/null || true`"; \
 
     cp $files  /usr/local/share/vim/vim82/doc; \
 
     cd /usr/local/share/vim/vim82/doc; \
 
     chmod 644 $files

    cp  ../runtime/doc/*.pl /usr/local/share/vim/vim82/doc

    chmod 755 /usr/local/share/vim/vim82/doc/*.pl

    cd ../runtime/doc; if test -f tags.dist; then mv -f tags.dist tags; fi

    cp ../runtime/menu.vim /usr/local/share/vim/vim82/menu.vim

    chmod 644 /usr/local/share/vim/vim82/menu.vim

    cp ../runtime/synmenu.vim /usr/local/share/vim/vim82/synmenu.vim

    chmod 644 /usr/local/share/vim/vim82/synmenu.vim

    cp ../runtime/delmenu.vim /usr/local/share/vim/vim82/delmenu.vim

    chmod 644 /usr/local/share/vim/vim82/delmenu.vim

    cp ../runtime/defaults.vim /usr/local/share/vim/vim82/defaults.vim

    chmod 644 /usr/local/share/vim/vim82/defaults.vim

    cp ../runtime/evim.vim /usr/local/share/vim/vim82/evim.vim

    chmod 644 /usr/local/share/vim/vim82/evim.vim

    cp ../runtime/mswin.vim /usr/local/share/vim/vim82/mswin.vim

    chmod 644 /usr/local/share/vim/vim82/mswin.vim

    cp ../runtime/bugreport.vim /usr/local/share/vim/vim82/bugreport.vim

    chmod 644 /usr/local/share/vim/vim82/bugreport.vim

    cp ../runtime/vimrc_example.vim /usr/local/share/vim/vim82

    chmod 644 /usr/local/share/vim/vim82/vimrc_example.vim
    
    cp ../runtime/gvimrc_example.vim /usr/local/share/vim/vim82

    chmod 644 /usr/local/share/vim/vim82/gvimrc_example.vim

    cp ../runtime/filetype.vim /usr/local/share/vim/vim82/filetype.vim

    chmod 644 /usr/local/share/vim/vim82/filetype.vim

    cp ../runtime/ftoff.vim /usr/local/share/vim/vim82/ftoff.vim

    chmod 644 /usr/local/share/vim/vim82/ftoff.vim

    cp ../runtime/scripts.vim /usr/local/share/vim/vim82/scripts.vim

    chmod 644 /usr/local/share/vim/vim82/scripts.vim

    cp ../runtime/ftplugin.vim /usr/local/share/vim/vim82/ftplugin.vim

    chmod 644 /usr/local/share/vim/vim82/ftplugin.vim


    cp ../runtime/ftplugof.vim /usr/local/share/vim/vim82/ftplugof.vim

    chmod 644 /usr/local/share/vim/vim82/ftplugof.vim

    cp ../runtime/indent.vim /usr/local/share/vim/vim82/indent.vim

    chmod 644 /usr/local/share/vim/vim82/indent.vim

    cp ../runtime/indoff.vim /usr/local/share/vim/vim82/indoff.vim

    chmod 644 /usr/local/share/vim/vim82/indoff.vim

    cp ../runtime/optwin.vim /usr/local/share/vim/vim82/optwin.vim

    chmod 644 /usr/local/share/vim/vim82/optwin.vim

    cd ../runtime/print; cp *.ps /usr/local/share/vim/vim82/print

    cd /usr/local/share/vim/vim82/print; chmod 644*.ps

    cd ../runtime/colors; cp -r *.vim lists tools README.txt /usr/local/share/vim/vim82/colors

    cd /usr/local/share/vim/vim82/colors; chmod 755 lists tools

    cd /usr/local/share/vim/vim82/colors; chmod 644*.vim README.txt lists/*.vim tools/*.vim

    cd ../runtime/syntax; cp *.vim README.txt /usr/local/share/vim/vim82/syntax

    cd /usr/local/share/vim/vim82/syntax; chmod 644*.vim README.txt

    cd ../runtime/indent; cp *.vim README.txt /usr/local/share/vim/vim82/indent

    cd /usr/local/share/vim/vim82/indent; chmod 644*.vim README.txt

    cd ../runtime/autoload; cp *.vim README.txt /usr/local/share/vim/vim82/autoload

    cd /usr/local/share/vim/vim82/autoload; chmod 644*.vim README.txt

    cd ../runtime/autoload/dist; cp *.vim /usr/local/share/vim/vim82/autoload/dist

    cd /usr/local/share/vim/vim82/autoload/dist; chmod 644*.vim

    cd ../runtime/autoload/xml; cp *.vim /usr/local/share/vim/vim82/autoload/xml

    cd /usr/local/share/vim/vim82/autoload/xml; chmod 644*.vim

    cd ../runtime/plugin; cp *.vim README.txt /usr/local/share/vim/vim82/plugin

    cd /usr/local/share/vim/vim82/plugin; chmod 644*.vim README.txt

    cd ../runtime/ftplugin; cp *.vim README.txt logtalk.dict /usr/local/share/vim/vim82/ftplugin


    cd /usr/local/share/vim/vim82/ftplugin; chmod 644 *.vim README.txt logtalk.dict

    cd ../runtime/compiler; cp*.vim README.txt /usr/local/share/vim/vim82/compiler

    cd /usr/local/share/vim/vim82/compiler; chmod 644 *.vim README.txt

    cp -r ../runtime/macros/* /usr/local/share/vim/vim82/macros

    chmod 755 `find /usr/local/share/vim/vim82/macros -type d -print`

    chmod 644 `find /usr/local/share/vim/vim82/macros -type f -print`

    chmod: missing operand after ‘644’

    Try 'chmod --help' for more information.

    Makefile:2465: recipe for target 'installmacros' failed

    make[1]: ***[installmacros] Error 1

    make[1]: Leaving directory '/home/parallels/vim/src'

    Makefile:36: recipe for target 'install' failed

    make:*** [install] Error 2

    ****  Installation failed. Aborting package creation.

    Cleaning up...OK

    Bye.

Up to Now, not fix.

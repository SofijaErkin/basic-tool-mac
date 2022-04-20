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

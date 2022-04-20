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

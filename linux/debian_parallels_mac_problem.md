# Problem Happens that Debian On Mac Via Parallels

## 1. Problem A

### 1.1 Output

Debian requires Authentication.

### 1.2 Why

We do not enable root user.

### 1.3 Standard Operating Procedure

Enter terminal and input:

    sudo passwd
And terminal output:

    Password(you user password):your_current_user_password
As the upstairs terminal shows, and input your current user password. And output

    Enter new UNIX password:your_new_root_password

    retype new UNIX password: again_your_new_root_password

As the upstairs terminal shows, input twice your new root password.

### 1.4 Refer

[The default root and password during installing centos7 at Parallels Desktop(Chinese Blog)](https://blog.csdn.net/u012852597/article/details/79353949).

## 2. Problem B

### 2.1 Question

I need to change the host name of Debian in the virtual machine at mac.

### 2.2 Standard Operating Procedure

Input below code at your terminal:

    hostnamectl hostname your_new_host_name
`your_new_host_name` is the target host name of Linux.

## 3. Problem C

Enter or logout the root mode.

## 3.1 Standard Operating Procedure

login root mode, input the below code and type "`enter`" key, then type your

root password:

    su -
exit the root mode, just type the code:

    exit
Or

    logout
Or

    Ctrl+D
the upstairs are typing keys.

## 4. Problem D

Checkout the target software version.

all the source: `apt-cache madison vim`;

all source policy: `apt-cache policy vim`;

all version, reverse depends, dependencies, provides, reverse provides:

`apt-cache showpkg vim`.

## 5. Problem E

make error output:

    /bin/sh: 1: git: not found

    ...

    GITGUI_VERSION = 0.21.GITGUI

    * new locations or Tcl/Tk interpreter

    GEN git-gui

    INDEX lib/

    * tclsh failed; using unoptimized loading

    MSGFMT    po/de.msg Makefile:252: recipe for target 'po/de.msg' failed

    make[1]: ***[po/de.msg] Error 127

    Makefile:1955: recipe for target 'all' failed

    make:*** [all] Error 2

Fix upstairs error:

    sudo apt install tcl build-essential tk
And the output:

    SUBDIR templates

    MSGFMT po/build/locale/pt_PT/LC_MESSAGES/git.mo

    /bin/sh: 1: msgfmt: not found

    Makefile:2449: recipe for target 'po/build/locale/pt_PT/LC_MESSAGES/git.mo' failed

    make: *** [po/build/locale/pt_PT/LC_MESSAGES/git.mo] Error 127

Again fix upstairs error:

    sudo apt install gettext-devel
Again the output:

    Reading package lists... Done
    
    Building dependency tree

    Reading state information... Done

    E: Unable to locate package gettext-devel
Again again fix upstairs error:

    sudo apt-get install gettext
And fixed.

## 6. Problem F

copy and paste text in Linux.

copy:

    Shift+Ctrl+C
paste:

    Shift+Ctrl+V
But, I've just used hotkeys map between MacOS and virtual machine Debian.

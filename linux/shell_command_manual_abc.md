# Shell Command Manual ABC

## 1. Check Default Shell

    echo $SHELL

## 2. Linux Download Tools

Debian(Ubuntu): apt, apt-get;

Fedora: dnf;

CentOS: yum;

## 3. Check Java Version

    java -version

## 4. Check dependence

macOS:

    brew deps xxx -tree

## 5. Grep

To find out "python":

    ls -l | grep "python"

## 6. Check Upgrade and Upgrade

To check whether has been upgrade on Debian:

    sudo apt update

    sudo apt-get update

Debian To upgrade all the latest version:

    sudo apt update && sudo apt upgrade

refer: [How do I check for updates on Debian 11](https://linuxhint.com/check-updates-debian-11/)?

## 7. Search

To search package on macOS/Debian:

macOS:

    brew search package

Debian:

    apt search package

    apt-cache madison package

## 8. Exit Ping

macOS/Linux: `Ctrl` + `c`.

## 9.Check VM Disk usage

Just login your VM on Host terminal and then check, e.g: Debian.

    df -h

    df -T

    df -i

    df -k

    free -l
    
    sudo fdisk -l

    sudo cfdisk

## 10.[Copy and paste Via VIM](https://linuxize.com/post/how-to-copy-cut-paste-in-vim/)

Copy current line: `esc` + `yy`;

Paste to the cursor: `p`;

## 11.[Write path of a folder or directory with space in its name](https://askubuntu.com/a/530581/922190)

Enclose the whole path by double-quotes `"`, single-quote `'` or escape the

 space character using a backslash `\`.

## 12.[Restart or reboot and shut down Machine](https://www.debian.org/releases/stretch/amd64/ch08s01.html.en)

Reboot/restart Ubuntu(Debian) : `sudo reboot`;

Shut down Debian:

    sudo poweroff

    sudo shutdown -h now

    sudo systemctl poweroff

## 13.Check the version of Glibc on Debian or Ubuntu

    ldd --version

Or, e.g: `x86_64-Debian/x_64-Debian`:

    /lib/x86_64-linux-gnu/libc.so.6

`i386-Debian`:

    /lib/i386-linux-gnu/libc.so.6

## 14.Rename the file or directory

### 14.1Command `mv`

Rename only one:

    mv source_file_or_directory destination
If `destination_file` does not exist, `source_file_or_directory` is renamed

`destination_file`.

### 14.2Command `rename`

Rename multiple files, using regular expressions.

### 14.3Reference

1.[How to change or rename a file, folder, or directory](https://www.computerhope.com/issues/ch000846.htm).

2.[Linux mv command](https://www.computerhope.com/unix/umv.htm).

3.[Linux rename command](https://www.computerhope.com/unix/rename.htm).

### 15.Compile and Execute  Java Program

    (From the Command Prompt, type to compile)
    javac HelloWorld.java
    (At the Command Prompt, type to Execute)
    java HelloWorld
    (Try running your program with the command line while Troubleshooting)
    java -classpath ./ HelloWorld

Reference: [Hello, World in Java on Mac OS X](https://www.cs.princeton.edu/courses/archive/spr04/cos126/hello/mac.html).

### 16.Check Where does JDK installed

    java -verbose
    /usr/libexec/java_home -V

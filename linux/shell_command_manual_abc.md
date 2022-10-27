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

## 6. Upgrade

Debian To upgrade all the latest version:

    sudo apt update && sudo apt upgrade

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

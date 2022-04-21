# Fix VirtualBox on Mac

This is a notebook to write about installing virtualbox on mac, mostly fix

problems during installing. It's time to say bye to Parallels Desktop, for me.

I'm a elder user of Parallels from 2017 up to now, and pay year in  and year

out. My mac again upgrade to macOS 12.3.1 this year. And now $49.99/5204円/¥358

is need to upgrade Parallels. I'm jobless. You know, it's doesn't matter how much

Parallels do that cost when I'm on job. $49.99/5204円/¥358, for me, it's too

luxury and too expensive. Got down on my knees, VirtualBox.

## 0. Install Refer

1.[Installing Debian Linux in a VirtualBox Virtual Machine](https://www.brianlinkletter.com/2012/10/installing-debian-linux-in-a-virtualbox-virtual-machine/).

2.[How to install Debian 10 in VirtualBox on Windows 10](https://www.sysnettechsolutions.com/en/install-debian-9-virtualbox-windows-10/).

3.[How to Install Debian 11 on VirtualBox](https://linoxide.com/install-debian-11-on-virtualbox/).

4.[MacのVirtualBoxにLinuxのUbuntuをインストールする方法](http://inforati.jp/apple/mac-tips-techniques/windows-hints/how-to-install-linux-ubuntu-to-mac-virtualbox.html).

5.[VirtualBoxでLinuxのテスト環境を作ってみよう](https://atmarkit.itmedia.co.jp/ait/articles/1602/17/news030.html).

6.[VirtualBoxを利用してUbuntuをインストールする（Mac版）](https://it-kyujin.jp/article/detail/726/).

7.[VirtualBox install Windows 10 on Mac(Chinese)](https://www.codetd.com/article/12738908).

8.[VirtualBox install CentOS 7 (Chinese)](https://yipinxieli.com/2021/06/14/linux0/).

9.[MacOS install Linux using Virtual machine(VirtualBox) (Chinese)](https://zhuanlan.zhihu.com/p/109808506).

## 1. Problem A

display output:

    The virtual machine 'Linuxdemo' has terminated unexpectedly during startup with exit code 1 (0x1).

    Back/Result Code: NS_ERROR_FAILURE (0x80004005)

    part/unit/Component: MachineWrap

    window/Interface: IMachine {85632c68-b5bb-4316-a900-5eb28d3413df}

Fixed.

click `apple` logo, select "`System Preferences`", chose "`Security & Privacy`"

, click "`General`", click your locked `lock` logo, just input your mac pass

-word, then you will see "allow Virtual box XXX" or "allow Oracle XXX", shoot

or check that mark on the right of the upstairs showing news. Then, restart

mac.

## 2. Problem B

My Mac touch-pad  do not work on Debian under Virtual Box.

Fixed.

click `apple` logo, select "`System Preferences`", chose "`Security & Privacy`"

, click "`Privacy`", click your locked `lock` logo, just input your mac pass

-word, add "`VirtualBox App`" to "`Accessibility`" and "Input Monitoring". 

Then, restart mac.

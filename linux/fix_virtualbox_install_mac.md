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

## 1. [Problem A](https://stackoverflow.com/questions/52689672/virtualbox-ns-error-failure-0x80004005-macos)

display output:

    The virtual machine 'Linuxdemo' has terminated unexpectedly during startup with exit code 1 (0x1).

    Back/Result Code: NS_ERROR_FAILURE (0x80004005)

    part/unit/Component: MachineWrap

    window/Interface: IMachine {85632c68-b5bb-4316-a900-5eb28d3413df}

Fixed.

This is because:

After installing `Virtual Box`, first grant "`VirtualBox`" APP

permissions, then restart/reboot mac.

So,

click `apple` logo, select "`System Preferences`", chose "`Security & Privacy`"

, click "`General`", click your locked `lock` logo, just input your mac pass

-word, then you will see "allow Virtual box XXX" or "allow Oracle XXX", shoot

or check that mark on the right of the upstairs showing news. Then, restart

mac. Then, I just remove the named item `default` that below the `Tools` on

the "Oracle VM VirtualBox Manager".

## 2. Problem B

My Mac touch-pad  do not work on Debian under Virtual Box.

Fixed.

click `apple` logo, select "`System Preferences`", chose "`Security & Privacy`"

, click "`Privacy`", click your locked `lock` logo, just input your mac pass

-word, add "`VirtualBox App`" to "`Accessibility`" and "Input Monitoring".

Then, restart mac.

## 3. Problem C

Debian via `Virtual Box` display too small on mac.

Fixed.

When a new virtual machine witness on mac, first step is to adjust virtual

machine's scale factor and maximum screen size, second step is to adjust

guest's scale factor, third step is to adjust guest's resolution, fourth

step is to restart host machine(e.g: macOS/Windows).

Just as `Virtual Box` manually installed `Debian` on `Mac` for example:

My host machine `macOS` Retina display is `13.3 inch` (`2560*1600`);

My virtual machine VirtualBox`6.1.32` Max scale factor is `300%`;

And, VirtualBox default interface is `400*300`with scale factor `100%`;

Now,

1.VM scale factor and max screen size:

click `VirtualBox` APP, then you see "`Oracle Vm VirtualBox Manager`",

move your mouse to top menu, found out `VirtualBox`logo, select

"`Preference`", then enter "`VirtualBox - General`", click `Display`,

Choose "`Maximum screen size`" to "`Hint`" with Width "`1280`" and

Height "`800`", and adjust "`Scale Factor`" to "`200%`", then click

"`OK`".

2.Guest scale factor:

When you enter `VirtualBox` APP, then you see "`Oracle Vm VirtualBox Manager`",

found out your guest machine name button, as mine is "`linux_debian_11`",

you will see "`Power Off`" under the name of your guest machine.

Please found out your guest machine "`Menu Box Button`", that is at the right

of your guest machine name, right click your "`Menu Box`" or single click your

"`Guest Machine Box`", choose "`Settings`", then you will enter your guest

machines's "`General`", mine is "`linux_debian_11 - General`", then click

"`Display`", and adjust "`Scale Factor`" to "`200%`"(the same as `Scale Factor`

on virtual machine's "`General`").

3.Guest Resolution:

My guest machine is "`Debian`". So, just use "`Debian`" for an example here.

click my guest machine "`Debian`"'s "Settings", then found out "`Display`",

and, also, choose "`Resolution`" to "`1280*800(16:10)`".

No matter your Debian version is "`8`", or even "`11`", the upstairs settings

is OK.

Are you Ok? Said, Lei Jun.

4.Reboot Host Machine:

Now, it's your time show!

Please restart my Mac.

Finally, "`Guest Resolution`" *  "`Scale Factor`" == "`Host Display size`".

"`1280*800`" * "`200%`" == "`2560*1600`";

VirtualBox Default interface is 400*300 with "`100%`", it's too small, so

"`Scale Factor`" should be from "`100%`" to VBox's max "`300%`". Also, has:

"`2560*1600`" * "`100%`" == "`2560*1600`"; (But VirtualBox Enter Wins will

too small just like VirtualBox default interface.)

"`1024*640`" * "`250%`" == "`2560*1600`"; (But guest machine "`Debian`"'s

resolution display do not have "`1024*640`".)

## 4. Problem D

    linuxconfig is not in the sudoers file.  This incident will be reported.

Fixed.

    su -

    usermod -aG sudo linuxconfig

reboot virtual machine or Debian.

refer:

[How to fix: user is not in the sudoers file error.](https://linuxconfig.org/rhel7-user-is-not-in-the-sudoers-file-error)

## 5. Problem E

    please use apt-cdrom to make this CD-ROM recognized by APT. apt-get cannot be used to add new CD-ROMS

Fix:

    sudo vi /etc/apt/sources.list

Remove any lines that include CD-ROM. Save the file and try once more.

refer:

[Failed to download repository information due to missing CDROM.](https://askubuntu.com/a/120498)

## 6. Problem F

Do not COPY between Guest and Host.

Fixed.

0.Virtual Machine Sync COPY Settings:

Settings-General-Advanced-click "`Share Clipboard`" and "`Drag'n'Drop`";

1.Virtual Machine Settings:

Settings-General-Storage-Controller:STAT-click "`Use Host I/O Cache`";

2.Virtual Machine Storage:

Storage-Controller:STAT-XXX.vdi-click "Solid-state Drive";

3.Manually install VBoxLinuxAdditions:

   sudo mkdir --p /media/cdrom

    sudo mount -t auto /dev/cdrom /media/cdrom

    cd /media/cdrom

    sudo sh VBoxLinuxAdditions.run 

4.Restart or Reboot Guest machine.

## 7. Problem G

    Runtime error opening '/Users/yq/.docker/machine/machines/default/default/default.vbox' for reading: -102 (File not found.).

    /Users/vbox/tinderbox/6.1-mac-rel/src/VBox/Main/src-server/MachineImpl.cpp[754] (nsresult Machine::i_registeredInit()).

    Result Code: NS_ERROR_FAILURE (0x80004005)

    Component: MachineWrap

    Interface: IMachine {85632c68-b5bb-4316-a900-5eb28d3413df}

Do not formally turn down VM.

Could enter "`/Users/yq/.docker/machine/machines/default/default/`", found

out like "`xxx.vbox-prev`", change that extension name from "`.vbox-prev`" to

"`.vbox`".

Not Fix!

## 8. Problem H

    Unable to insert the virtual optical disk

    /Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso 
    
    into the machine linux_Debian_11

    Details

    The object functionality is limited

    Result Code: E_ACCESSDENIED(0x80070005)

    Compoent: MachineWarp

    Interface: IMachine{85632c68-b5bb-4316-a900-5eb28d3413df}

    Callee RC: NS_ERROR_FAILURE(0x80004005)

Fixed.

    sudo mkdir --p /media/cdrom

    sudo mount -t auto /dev/cdrom /media/cdrom

    cd /media/cdrom

    sudo sh VBoxLinuxAdditions.run

Restart or Reboot Guest machine.

## 9. Problem I

    E: Unable to locate package emacs

    E: Package 'gcc-10' has no installation candidate

    package gcc-10 is not available, but is referred to by another package.
   
    This may mean that the package is missing, has been obsoleted, or
is only available from another source

    E: Package 'gcc' has no installation candidate

Or
    E: The repository "<http://security.debian.org> bullseye/updates Release" does not have a Release file.

    N: Updating from such a repository can't be done securely, and is therefore disabled by default.

    N: See apt-secure(8) manpage for repository creation and user configuration details.

Fixed.

Need to change ["`Sources List Generator for Debian`"](https://debgen.xyz/).

    cd /etc/apt/ && sudo nano sources.list

Add the below three code :

    deb http://mirrors.xmission.com/debian/ testing main non-free contrib

    deb http://http.us.debian.org/debian testing main contrib non-free

    deb http://ftp.us.debian.org/debian testing main non-free contrib

The upstairs code "`apt-cache madison gcc`":

    gcc | 4:11.2.0-2 | http://mirrors.xmission.com/debian testing/main amd64 Packages
    
    gcc | 4:11.2.0-2 | http://http.us.debian.org/debian testing/main amd64 Packages
    
    gcc | 4:11.2.0-2 | http://ftp.us.debian.org/debian testing/main amd64 Packages

Or the below code(Debian 11):

    deb http://ftp.us.debian.org/debian/ bullseye main

    deb-src http://ftp.us.debian.org/debian/ bullseye main

    deb http://ftp.us.debian.org/debian/ bullseye-updates main

    deb-src http://ftp.us.debian.org/debian/ bullseye-updates main

    deb http://security.debian.org/debian-security bullseye-security main 

    deb-src http://security.debian.org/debian-security bullseye-security main

The upstairs code "`apt-cache madison gcc`":

    gcc | 4:10.2.1-1 | http://ftp.us.debian.org/debian bullseye/main amd64 Packages

    gcc-defaults |      1.190 | http://ftp.us.debian.org/debian bullseye/main Sources

Or:

    deb http://deb.debian.org/debian/ bullseye main

    deb-src http://deb.debian.org/debian/ bullseye main

    deb http://security.debian.org/debian-security bullseye-security main contrib

    deb-src http://security.debian.org/debian-security bullseye-security main contrib

    deb http://deb.debian.org/debian/ bullseye-updates main contrib

    deb-src http://deb.debian.org/debian/ bullseye-updates main contrib

The upstairs code "`apt-cache madison gcc`":

    gcc | 4:10.2.1-1 | http://deb.debian.org/debian bullseye/main amd64 Packages

    gcc-defaults |      1.190 | http://deb.debian.org/debian bullseye/main Sources

Or:

    deb http://deb.debian.org/debian bullseye main contrib non-free

    deb-src http://deb.debian.org/debian bullseye main contrib non-free
  
    # deb http://deb.debian.org/debian-security bullseye/updates main contrib non-free

    # deb-src http://deb.debian.org/debian-security bullseye/updates main contrib non-free

    deb http://deb.debian.org/debian bullseye-updates main contrib non-free

    deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

    deb http://security.debian.org/debian-security bullseye-security main contrib non-free

    deb-src http://security.debian.org/debian-security bullseye-security main contrib non-free

The upstairs code "`apt-cache madison gcc`":

    gcc | 4:10.2.1-1 | http://deb.debian.org/debian bullseye/main amd64 Packages

    gcc-defaults |      1.190 | http://deb.debian.org/debian bullseye/main Sources

Also, comment your source deb.

## 10. Problem J

    Error writing sources.list: Permission denied

Fixed.

    sudo nano sources.list

## 11. [Problem H](https://forums.virtualbox.org/viewtopic.php?t=92632#wrap)

    VirtualBox-Error

    You must specify a machine to start, using command line.

    Usage:VirtualBoxVM --startvm <name|UUID>

    Starts the VirtualBox virtual machine with the given ame or unique identifier(UUID).

To fix.

Go to the OSX System Preferences » Users & Groups » select your account »

Login Items tab (on the right).

Select the automatically item named `VirtualBoxVM`, then click the minus

button `-`, then quit the "OSX System Preferences".

# Samba Share

This `Samba Share` is from Linux/Cloud(e.g:debian) to Others(like:macos).

## 1.Install Samba

Just use the below:

    sudo apt update
    
    sudo apt install samba

## 2.Create Samba Password file

    sudo touch /etc/samba/smbpasswd

## 3.Create User Name and Password(Using the current user name and password)

    sudo smbpasswd -a username

## 4.Config Smaba

There will be have a default configuration file `smb.conf` under `/etc/samba`.

But you'd better rename the default file into `smb.conf.original` and create

a new file named `smb.conf` using the below code:

    sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.original

    sudo nano /etc/samba/smb.conf

Edit the `/etc/samba/smb.conf`:

    sudo gedit /etc/samba/smb.conf

Adding the below to the bottom of that file

    [share]
       
       comment = share folder
   
       path = /home/username/mac_share
   
       create mask = 0766
   
       directory mask = 0766
   
       valid users username
      
       force user = username
   
       force group = username
   
       available = yes
   
       browseable = yes
   
       public = yes
   
       writable = yes

Attention please, "create mask" or "directory mask" `0766` is the Linux

permissions[(An introduction to chmod)](https://www.redhat.com/sysadmin/introduction-chmod)

or [in Japanese](http://web.tku.ac.jp/~densan/local/permission/permission.htm)

or [in chinese](https://blog.csdn.net/dijkstar/article/details/50645139).

[Notice](https://superuser.com/a/258103): No matter any time, Checkout syntax

just use `testparm` to check your changes after you edit `smb.conf`,

then let the daemon re-read the config with a "`sudo /etc/init.d/smbd restart`"

or "`sudo service smbd restart`".

## 5.Restart Server Samba

    sudo /etc/init.d/smbd restart

## 6.Checkout the IP of Linux(Notice: virtual local IP not work)

    ifconfig

## 7.Using Folder under Macbook Connect Samba

right click `Folder`, choose `Connect to server`, input the IP, e.g:

    smb://10.0.1.15

Notice: The `IP` should be the physical or virtual IP, not that local IP.

The Guest machine and the Host machine should be the bridge connection,

not the host-only or NAT connect.

## 8.Using User Name and Password Register Account

Just using user name and password under Linux to choose register account to

connect, and then transmit data.

## 9.[Terminal Login or Access Samba Server Services](https://gist.github.com/SofijaErkin/c1ffee1af03826db67ec594c3d727e2e)

There is best to login samba client via terminal, which means access the

services of samba service by terminal.

## 10.Refer

Refer from Server to Client.

### 10.1Refer from Linux/Debian to Host/macOS

Host/macOS smaba client using terminal connects to Linux/Debian samba server.

Not that easy.

1.[How to set up Samba in Ubuntu/Linux, and access it in Mac OS and Windows](https://adrianmejia.com/how-to-set-up-samba-in-ubuntu-linux-and-access-it-in-mac-os-and-windows/).

2.[Configure Samba to Work Better with Mac OS X](https://wiki.samba.org/index.php/Configure_Samba_to_Work_Better_with_Mac_OS_X).

3.[How to set up Samba in Ubuntu and access it in MacOS/Windows](https://trendoceans.com/how-to-set-up-samba-in-ubuntu-and-access-it-in-macos-windows/).

4.[Mac OSX client and Linux SAMBA share](https://forum.howtoforge.com/threads/mac-osx-client-and-linux-samba-share.77380/).

5.[How to Share Files Between Windows, Mac, and Linux PCs on a Network](https://www.howtogeek.com/191116/how-to-share-files-between-windows-mac-and-linux-pcs-on-a-network/).

6.[How To Connect To Samba Shares Mac Os X?](https://lemp.io/how-to-connect-to-samba-shares-mac-os-x/).

7.[Sharing folder between virtual machine ubuntu and macOS(Chinese Blog)](https://blog.csdn.net/Bioinspiration/article/details/107203703).

8.[Macbook access the sharing folders under Ubuntu(Chinese Blog)](https://blog.csdn.net/qq_41822647/article/details/85332378?spm=1001.2101.3001.6650.12&utm_medium=distribute.pc_relevant.none-task-blog-2~default~CTRLIST~Rate-12-85332378-blog-107203703.pc_relevant_paycolumn_v3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2~default~CTRLIST~Rate-12-85332378-blog-107203703.pc_relevant_paycolumn_v3&utm_relevant_index=14).

9.[Accessing Linux Files from Windows or Mac (via SMB)](https://latisresearch.umn.edu/linux-smb).

10.(Terminal)[macOS: How to mount a SMB share from the command line](https://www.ryadel.com/en/macos-mount-smb-share-command-line-terminal-unc-remote-folder/).

11.(Terminal)[Using terminal connect SMB(Chinese Blog)](https://fengyalv.github.io/Blogs/mac/%E4%BD%BF%E7%94%A8%E7%BB%88%E7%AB%AF%E8%BF%9E%E6%8E%A5smb.html).

12.(Terminal)[The three ways to connect SMB under MacOS terminal(Chinese Blog)](https://blog.csdn.net/youxiansanren/article/details/51581282).

13.(Terminal)[MacOSX connect Samba under terminal(Chinese)](https://blog.csdn.net/lionelluthor/article/details/102876522).

14.[Sharing Files From a VirtualBox Guest To The Host Using NAT Adapter](https://kleinfelter.com/sharing-files-from-a-virtualbox-guest-to-the-host-using-nat-adapter).

15.[Firewalling Samba](https://www.samba.org/~tpot/articles/firewall.html).

16.[The port and protocol of Samba Service(Chinese Blog)](https://blog.csdn.net/wangsifu2009/article/details/6780749).

17.[4.3. Shared Folders](https://www.virtualbox.org/manual/ch04.html#sharedfolders).

18.[Chapter 4. Guest Additions](https://www.virtualbox.org/manual/ch04.html).

19.[8.40. VBoxManage sharedfolder](https://www.virtualbox.org/manual/ch08.html#vboxmanage-sharedfolder).

20.[Share Ubuntu Home Directories using Samba](https://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/).

21.[21.3.4 Accessing Samba Shares from an Oracle Linux Client](https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/access-shares-linux.html).

22.[21.3.1 Configuring a Samba Server](https://docs.oracle.com/en/operating-systems/oracle-linux/6/admin/configure-samba-server.html).

### 10.2Refer from Host/macOS to Linux/Debian

Linux/Debian samba client using terminal connects to Host/macOS smaba server.

Easy!

1.[Configuring Samba on Mac OS X](https://docs.toonboom.com/help/harmony-14/advanced/installation/mac/configure-samba-macosx.html).

2.(Terminal)[Macbook build Samba folders to share with Ubuntu for accessing and loading(Chinese Blog)](https://blog.csdn.net/ff_lz/article/details/107391871?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_title~default-4-107391871-blog-85332378.pc_relevant_paycolumn_v3&spm=1001.2101.3001.4242.3&utm_relevant_index=7).

3.(Windows Port Forwarding+Terminal)[Ubuntu16.04 access the sharing folders of Windows via Internet with Samba(Chinese Blog)](https://blog.csdn.net/Yemiekai/article/details/113432451).

4.[MacOS build up Samba Server(Chinese Blog)](https://blog.csdn.net/qq_38375620/article/details/101699465).

5.(Terminal)[Config the Samba client on Linux to access the remote Samba server contents(Chinese Blog)](https://www.linuxrumen.com/rmxx/2093.html).

6.(Terminal)[Ubuntu access te server of Samba using terminal(Chinese Blog)](https://blog.csdn.net/ZCF1002797280/article/details/49805603).

7.[Set up file sharing on Mac](https://support.apple.com/guide/mac-help/set-up-file-sharing-on-mac-mh17131/mac).

8.(Terminal)[How to connect to samba shares over the internet via ssh from mac os x](https://blog.cadena-it.com/linux-tips-how-to/how-to-connect-to-samba-shares-over-the-internet-via-ssh-from-mac-os-x/).

9.(Terminal)[Smbclient document](https://www.samba.org/samba/docs/current/man-html/smbclient.1.html?spm=a2c6h.13066369.question.22.198a2863Y6GMVE).

10.(Terminal)[HOWTO: Use Shared Folders](https://forums.virtualbox.org/viewtopic.php?t=15868).

11.(Host-only+VM+Host+Git)[Using Git with shared folders and virtual machines](https://www.software.ac.uk/resources/guides-everything/using-git-shared-folders-and-virtual-machines-3).

12.[Direct connect to Maximo running on a NAT virtual machine](https://www.ibm.com/support/pages/direct-connect-maximo-running-nat-virtual-machine).

13.[How to access Hyper-V VMs behind native NAT](https://4sysops.com/archives/how-to-access-hyper-v-vms-through-native-nat/).

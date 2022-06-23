# Samba Share

## Install Samba

Just use the below:

    sudo apt update
    
    sudo apt install samba

## Create Samba Password file

    sudo touch /etc/samba/smbpasswd

## Create User Name and Password(Using the current user name and password)

    sudo smbpasswd -a username

## Config Smaba

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

## Restart Server Samba

    sudo /etc/init.d/smbd restart

## Checkout the IP of Linux(Notice: virtual local IP not work)

    ifconfig

## Using Folder under Macbook Connect Samba

right click `Folder`, choose `Connect to server`, input the IP, e.g:

    smb://10.0.1.15

## Using User Name and Password Register Account

Just using user name and password under Linux to register account, and transmit data.

## refer

[How to set up Samba in Ubuntu/Linux, and access it in Mac OS and Windows](https://adrianmejia.com/how-to-set-up-samba-in-ubuntu-linux-and-access-it-in-mac-os-and-windows/)

[Configure Samba to Work Better with Mac OS X](https://wiki.samba.org/index.php/Configure_Samba_to_Work_Better_with_Mac_OS_X)

[How to set up Samba in Ubuntu and access it in MacOS/Windows](https://trendoceans.com/how-to-set-up-samba-in-ubuntu-and-access-it-in-macos-windows/)

[Mac OSX client and Linux SAMBA share](https://forum.howtoforge.com/threads/mac-osx-client-and-linux-samba-share.77380/)

[How to Share Files Between Windows, Mac, and Linux PCs on a Network](https://www.howtogeek.com/191116/how-to-share-files-between-windows-mac-and-linux-pcs-on-a-network/)

[How To Connect To Samba Shares Mac Os X?](https://lemp.io/how-to-connect-to-samba-shares-mac-os-x/)

[Sharing folder between virtual machine ubuntu and macOS(Chinese Blog)](https://blog.csdn.net/Bioinspiration/article/details/107203703)

[Macbook access the sharing folders under Ubuntu(Chinese Blog)](https://blog.csdn.net/qq_41822647/article/details/85332378?spm=1001.2101.3001.6650.12&utm_medium=distribute.pc_relevant.none-task-blog-2~default~CTRLIST~Rate-12-85332378-blog-107203703.pc_relevant_paycolumn_v3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2~default~CTRLIST~Rate-12-85332378-blog-107203703.pc_relevant_paycolumn_v3&utm_relevant_index=14)

[Macbook build Samba folders to share with Ubuntu for accessing and loading(Chinese Blog)](https://blog.csdn.net/ff_lz/article/details/107391871?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_title~default-4-107391871-blog-85332378.pc_relevant_paycolumn_v3&spm=1001.2101.3001.4242.3&utm_relevant_index=7)

# Login Samba between VM and Host via Terminal

## 1.Try login smaba client

Two ways:

1.Try to login samba client on VM Debian via terminal, and access to the

services of samba server on Host macOS.

2.Try to login samba client on Host macOS via terminal, and access to the

services of samba server on VM Debian.

### 1.1try case with accessing samba server on Host macOS from VM Debian

#### 1.1.1 Case Combat

##### 1.Case0001

    smbclient //192.168.1.1/sharewithdebian -U sharewithdebian%6666 --signing=off

Catch: `session setup failed: NT_STATUS_LOGON_FAILURE`.

What's the matter: I do not know!

No fix!

###### 1.Case00010

Another, try case:

    smbclient //192.168.1.1/sharewithdebian -U sharewithdebian%pass --signing=off

another catch: `session setup failed: NT_STATUS_LOGON_FAILURE`.

##### 2.Case0002

    smbclient -L //192.168.1.2

Catch:

    Enter WORKGROUP\foruo's password:
    session setup failed: NT_STATUS_LOGON_FAILURE

What's the matter: can not login forever!

No fix!

##### 3.Case0003

`smbclient //192.168.1.2/sharewithdebian -U sharewithdebian%6666`

Catch: `do_connect: Connection to 192.168.1.2 failed (Error NT_STATUS_IO_TIMEOUT)`.

What's the matter: occurs error during linking!

No fix!

###### 3.Case00030

Another, try case:

    smbclient //192.168.1.2/sharewithdebian -U sharewithdebian%pass

Catch:

    Try "help" to get a list of possible commands.

    smb: \> SMBecho failed (NT_STATUS_CONNECTION_DISCONNECTED). The connection is disconnected now

Another with what's the matter:  occurs that accidentally  interrupt during connecting.

##### 4.Case0004

`smbclient -L //192.168.1.2 -U sharewithdebian --signing-off`

Catch: `do_connect: Connection to 192.168.1.2 failed (Error NT_STATUS_IO_TIMEOUT)`.

What's the matter: occurs error during linking!

No fix!

###### 4.Case00040

Another,try case:

    smbclient -L //192.168.1.2 -U sharewithdebian --signing-off

Another catch:

    Enter WORKGROUP\sharewithdebian's password:

         Sharename       Type      Comment

         ---------       ----      -------

         IPC$            IPC

         sharewithdebian Disk

    Reconnecting with SMB1 for workgroup listing.

    do_connect: Connection to 192.168.1.2 failed (Error NT_STATUS_CONNECTION_REFUSED)

    Unable to connect with SMB1 -- no workgroup available

Another with what's the matter: I do not know!

Notice: -----------------------------------------------------------------------

If you want to mount the share folder in the current VM, please just use

cifs-utils via `sudo apt install cifs-utils` for Debian/Ubuntu.

----------------------------------------------------------------------- :Notice

##### 5.Case0005

    mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `mount: /media/share: must be superuser to use mount.`.

What's the matter: need root power!

Fixed! using:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

##### 6.Case0006

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `mount: /media/share: mount(2) system call failed: Network is unreachable.`.

What's the matter: I do not know!

No fix!

##### 7.Case0007

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `[sudo] password for foruo:`.

What's the matter: Successfully mounted!!!

###### 7.Case00070

Another, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos -o username=sharewithdebian,password=pass,vers=2.0

Catch: ``.

What's the matter: Successfully mounted!!!

###### 7.Case000701

One, try case:

    sudo mount -t cifs -o username=sharewithdebian,password=pass //192.168.1.2/sharewithdebian /media/share_from_macos

Catch: ``.

What's the matter: Successfully mounted!!!

###### 7.Case000702

Two, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos -osec=ntlmv2,domain=MYDONMAIN,username=sharewithdebian,password=pass

Catch: ``.

What's the matter: Successfully mounted!!!

###### 7.Case000703

Three, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos -osec=ntlmv2,domain=MYDOMAIN,username=share,password=pass

Catch: `mount: /media/share_from_macos: cannot mount //192.168.1.2/sharewithdebian read-only.`.

What's the matter: I do not know!

###### 7.Case000704

Four, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos

Catch:

    [sudo] password for foruo:
    mount: /media/share_from_macos: bad option; for several filesystems (e.g. nfs, cifs) you might need a /sbin/mount.<type> helper program.

What's the matter: I do not know!

###### 7.Case000705

Five, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos -o username=sharewithdebian,password=pass,vers=2.0

Catch: `[sudo] password for foruo:`.

What's the matter: Successfully mounted!!!

###### 7.Case000706

Six, try case:

    smb://192.168.1.2

Catch: `zsh: no such file or directory: smb://192.168.1.2`.

What's the matter: I do not know!

###### 7.Case000707

Seven, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian HD /media/share_from_debian -o username=sharewithdebian,noserverino

Catch:

    [sudo] password for foruo:
    mount: bad usage
    Try 'mount --help' for more information.

What's the matter: I do not know!

###### 7.Case000708

Eight, try case:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share_from_macos/ -rw -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch:``.

What's the matter: Successfully mounted!!!

###### 7.Case000709

Nine, try case:

    sudo mount -t cifs -o username=sharewithdebian //192.168.1.2/sharewithdebian /media/share_from_macos

Catch:

    [sudo] password for foruo:
    mount: /media/share_from_macos: cannot mount //192.168.1.2/sharewithdebian read-only.

What's the matter: Successfully mounted!!!

###### 7.Case00070X

Ten, try case:

    smbclient //samba_hostname_or_server_ip/share_name -U username

Catch:

    Enter WORKGROUP\sharewithdebian's password:
    Try "help" to get a list of possible commands.
    smb: \> SMBecho failed (NT_STATUS_CONNECTION_DISCONNECTED). The connection is disconnected now

What's the matter:  occurs that accidentally  interrupt during connecting.

###### 7.Case00070X1

Eleven, try case:

    sudo mount -t cifs -o username=username //samba_hostname_or_server_ip/sharename /mnt/smbmount

Catch:

    [sudo] password for user_debian:
    Password for username@//samba_hostname_or_server_ip/sharename:

What's the matter: Successfully mounted!!!

###### 7.Case00070X2

Twelve, try case:

    smbclient -L 192.168.1.2

Catch:

    Enter WORKGROUP\foruo's password:
    session setup failed: NT_STATUS_LOGON_FAILURE

What's the matter: I do not know!

###### 7.Case00070X3

Thirteen, try case:

    smbclient //192.168.1.2/sharewithdebian

Catch:

    Enter WORKGROUP\foruo's password:
    session setup failed: NT_STATUS_LOGON_FAILURE

What's the matter: I do not know!

###### 7.Case00070X4

Fourteen, try case:

    sudo mount -t cifs -o username=user_share_name,password=pass //192.168.1.2/sharewithdebian /media/share_from_macos

Catch:``.

What's the matter: Successfully mounted!!!

###### 7.Case00070X5

Fifteen, try case:

    sudo mount -t cifs username=sharewithdebian //192.168.1.2/sharewithdebian /media/share_from_macos

Catch:

    [sudo] password for foruo:
    mount: bad usage
    Try 'mount --help' for more information.

What's the matter: I do not know!

Notice: Un mount share folder -------------------------------------------------

If you do not  mount share folder, just use `cd && umount share_folders`.

------------------------------------------------Not mount share folders: Notice

Notice: Others ----------------------------------------------------------------

Checkout the mounted filesystem: `df -h`;

Checkout the mounted file: `ll /media/share_folder`;

If you want to automate mount share_folders, just add the code to `/etc/fstab`

at the bottom:

    //192.168.121.118/share /mnt/smbmount  cifs  username=zcwyou,password=123,soft,rw  0 0

also, continue use `cd && sudo mount -a` to test mount sharing folders.

SMBclient status command:

When terminal occurs `smb:\>` after using `smbclient XXXX`, then could use

smbclient command!

(The below is smbclient command)

`?` or `help` -> help with samba client usage.

`![shell command]` -> active the SHELL command, or enter the status of SHELL.

`cd [directory]` -> switch to the target directory of samba server, or current

directory.

`lcd` -> switch to the target directory of samba client.

`dir` or `ls` -> list the files of current directory.

`exit` or `quit` -> exit the client of samba.

`get file_server_name file_client_name` -> download file_server_name from

server of samba and named `file_client_name`; if do not change name, then

do not add `file_client_name`.

`mget file1 file2 file3 filen` -> download multiple-files from server of samba.

`md` or `mkdir` -> create the directories at the server of samba.

`rd` or `rmdir` -> delete the directories at the server of samba.

`put file_from_client_name file_to_server_name` -> load a file

`file_from_client_name` to server of samba with naming `file_to_server_name`.

`mput file1 file2 filen` -> load multiple files to the server of samba.

--------------------------------------------------------------- Others : Notice

But the upstairs successful cases is only reading status! Try using the below:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -rw -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Ok. read and write power!

But But But share folder will miss once the VM Debian power off!!!

VM Debian successfully login samba client with accessing the services of samba

server on Host macOS.

Happy Day! Nice Day! Great Day!

Have a nice!

#### 1.1.2Refer

1.[Macbook build Samba folders to share with Ubuntu for accessing and loading(Chinese Blog)](https://blog.csdn.net/ff_lz/article/details/107391871?utm_medium=distribute.pc_relevant.none-task-blog-2~default~baidujs_title~default-4-107391871-blog-85332378.pc_relevant_paycolumn_v3&spm=1001.2101.3001.4242.3&utm_relevant_index=7).

2.[Config the Samba client on Linux to access the remote Samba server contents(Chinese Blog)](https://www.linuxrumen.com/rmxx/2093.html).

3.[Ubuntu access te server of Samba using terminal(Chinese Blog)](https://blog.csdn.net/ZCF1002797280/article/details/49805603).

### 1.2try case with accessing samba server on VM Debian from Host macOS

#### 1.2.1Refer

1.[Ubuntu16.04 access the sharing folders of Windows via Internet with Samba(Chinese Blog)](https://blog.csdn.net/Yemiekai/article/details/113432451).

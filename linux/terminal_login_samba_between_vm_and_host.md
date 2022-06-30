# Login Samba between VM and Host via Terminal

## 1.Try login smaba client

Try to login samba client on VM Debian via terminal, and access to the services

of samba server on Host macOS.

### 1.1try case

1.Case0001

    smbclient //192.168.1.1/sharewithdebian -U sharewithdebian%6666 --signing=off

Catch: `session setup failed: NT_STATUS_LOGON_FAILURE`.

What's the matter: I do not know!

No fix!

Another, try case:

    smbclient //192.168.1.1/sharewithdebian -U sharewithdebian%pass --signing=off

another catch: `session setup failed: NT_STATUS_LOGON_FAILURE`.

2.Case0002

    smbclient -L //192.168.1.2

Catch:

    Enter WORKGROUP\foruo's password:
    session setup failed: NT_STATUS_LOGON_FAILURE

What's the matter: can not login forever!

No fix!

3.Case0003

`smbclient //192.168.1.2/sharewithdebian -U sharewithdebian%6666`

Catch: `do_connect: Connection to 192.168.1.2 failed (Error NT_STATUS_IO_TIMEOUT)`.

What's the matter: occurs error during linking!

No fix!

Another, try case:

    smbclient //192.168.1.2/sharewithdebian -U sharewithdebian%pass

Catch:

    Try "help" to get a list of possible commands.

    smb: \> SMBecho failed (NT_STATUS_CONNECTION_DISCONNECTED). The connection is disconnected now

Another with what's the matter:  occurs that accidentally  interrupt during connecting.

4.Case0004

`smbclient -L //192.168.1.2 -U sharewithdebian --signing-off`

Catch: `do_connect: Connection to 192.168.1.2 failed (Error NT_STATUS_IO_TIMEOUT)`.

What's the matter: occurs error during linking!

No fix!

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

5.Case0005

    mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `mount: /media/share: must be superuser to use mount.`.

What's the matter: need root power!

Fixed! using:

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

6.Case0006

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `mount: /media/share: mount(2) system call failed: Network is unreachable.`.

What's the matter: I do not know!

No fix!

7.Case0007

    sudo mount -t cifs //192.168.1.2/sharewithdebian /media/share/ -o username=sharewithdebian,password=pass,nounix,sec=ntlmssp

Catch: `[sudo] password for foruo:`.

What's the matter: Successfully mounted!!!

VM Debian successfully login samba client with accessing the services of samba server on Host macOS.

Happy Day! Nice Day! Great Day!

Have a nice!:)

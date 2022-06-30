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

2.Case0002

    smbclient -L //192.168.1.2

Catch:

    Enter WORKGROUP\foruo's password:
    session setup failed: NT_STATUS_LOGON_FAILURE

What's the matter: can not login forever!

No fix!

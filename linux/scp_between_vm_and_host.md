# SCP Command Combat Style

## 1.Summary

SCP: Copy a File Between Two Systems

## 2.Usage

`scp [OPTION] [user@]SRC_HOST:]file1 [user@]DEST_HOST:]file2`

Notice:

In SCP command,

`-P` - Specifies the remote host ssh port.

`-p` - Preserves files modification and access times.

In SSH command,

`-p` - Specifies the remote host ssh port.

## 3.Combat case

You know there are less than one more program running in remote cloud/VM. E.g:

there is a program `b.py`, that is dependent on another program `a.py`, if

this case occurs, we should push that two program into remote cloud/VM to run.

Now, that's time to use `scp`(secure copy). package them and copy, copy that

into my VM's folder `macos_share` via:

    scp -P target_port ~/{a,b}.py vm_current_user_name@127.0.0.1:~/macos_share

and if into my remote Cloud's folder `macos_share_cloud`, then via:

    scp -P target_port ~/{a,b}.py cloud_current_user_name@remote.cloud.ip.address:~/macos_share_cloud

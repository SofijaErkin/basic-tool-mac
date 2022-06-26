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

then run that transmitted copied file, that means product a instruct to active

`a.py` via `ssh` command with `"` and `"`:

    ssh -p target_port vm_current_user_name@127.0.0.1 "python3 ~/macos_share/a.py"

and if run in remote cloud, then via:

    ssh -p target_port cloud_current_user_name@remote.cloud.ip.address "python3 ~/macos_share/a.py" 

Finally, if want to copy the result to the local machine, then use `scp`, again:

    scp -P target_port vm_current_user_name@127.0.0.1:~/macos_share/a.py ~/Desktop/ 

and if from cloud to local, then:

    scp -P target_port cloud_current_user_name@remote.cloud.ip.address:~/macos_share_cloud/a.py ~/Desktop/ 

## 4.Refer

1.[Remote Copying With the scp Command](https://docs.oracle.com/cd/E26502_01/html/E29001/remotehowtoaccess-55154.html).

2.[MacOS access VM Ubuntu using SSH and the operation of Cloud(Chinese Blog)](https://www.cnblogs.com/bjwu/p/9853498.html).

3.[How to Use SCP Command to Securely Transfer Files](https://linuxize.com/post/how-to-use-scp-command-to-securely-transfer-files/).

4.[SSH Command](https://linuxize.com/post/ssh-command-in-linux/).

5.[SCP Command(Chinese Blog)](https://wangdoc.com/ssh/scp.html).

6.[Target Port to transmit files via SCP(Chinese Blog)](https://blog.csdn.net/qq_29307291/article/details/72819802).

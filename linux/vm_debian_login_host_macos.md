# VM Debian remote login Host macOS

Just download VirtualBox in macOS, then, install Debian via VirtualBox in macOS.

For VM Debian, it can directly access the host machine macOS via macOS's local

IP. E.g: `ssh macOS_user_name@macOS.local.ip.address`. So, we just need to set

at macOS and VM Debian.

refer:

1.[The network configuration of Ubuntu after installing via VirtualBox in Mac(Chinese Blog)](https://www.muouseo.com/article/qd7yq9pe2w.html).

## 1.macOS Settings

macOS Settings is that the SSH server settings while macOS has been remotely

logged in VM Debian.

### 1.1Install SSH in macOS

All modern Macs running macOS or Mac OS X come with SSH pre-installed by

default.

### 1.2Enable the SSH server

`Apple` logo -> `Setting Preferences` -> `Sharing` -> click `Remote Login` on

-> click `Allow access for` choose `Only those users` -> push `+` button ->

choose `your current user name` and push -> `Select` -> Watch `Remote Login On`

-> Notices `To log in this computer remotely, type "ssh user_name@ip.ip.ip.ip"`

-> OK.

### 1.3[Config SSH server Port](https://gist.github.com/SofijaErkin/91e1bec1640ca486805d32c9278f9c44#22config-ssh-server)

### 1.4Ensure IP

Just use the one of the code to checkout the IP of macOS:

`ipconfig getifaddr en0` or `ifconfig | grep inet`.

You will see:

    macOS.local.ip.address

E.g: `192.199.3.27`.

### 1.5refer

1.[Enabling remote SSH login on Mac OS X](https://knowledge.autodesk.com/support/smoke/troubleshooting/caas/sfdcarticles/sfdcarticles/Enabling-remote-SSH-login-on-Mac-OS-X.html).

2.[MacOS access VM Ubuntu using SSH and the operation of cloud(Chinese Blog)](https://www.cnblogs.com/bjwu/p/9853498.html).

3.[Macbook SSH with VM Kail and Settings auto login once Kail Power on(Chinese).](https://codeantenna.com/a/f9I5eLTOvS).

## 2.VM Debian Settings

VM Debian Settings it that the SSH client settings while VM Debian has remotely

logged into the macOS.

### 2.1[Install SSH in Debian](https://gist.github.com/SofijaErkin/91e1bec1640ca486805d32c9278f9c44#21install-ssh-in-debian)

### 2.2Test SSH with Host macOS

Just use the code: `ssh your_macos_current_user_name@your.macos.ip.address`.

E.g: `ssh dannyking@192.199.3.27`.

Then you got:

    The authenticity of host '192.199.3.27 (192.199.3.27)' can't be established.

    ECDSA key fingerprint is SHA256:xxx.

    Are you sure you want to continue connecting (yes/no)? yes

    Warning: Permanently added '192.199.3.27' (ECDSA) to the list of known hosts.

    dannyking@192.199.3.27's password:

then input my macOS user password: `my_macOS_user_password`, then got:

    Last login: Fri Month Day XX:XX:XX 20XX from 192.199.3.27 localhost

Just `exit` to quit the remote login.

    Connection to 192.199.3.27 closed.

### 2.3[No Use Password Remote login](https://gist.github.com/SofijaErkin/91e1bec1640ca486805d32c9278f9c44#33no-use-password-remote-login)

### 2.4refer

1.[Macbook SSH with VM Kail and Settings auto login once Kail Power on(Chinese).](https://codeantenna.com/a/f9I5eLTOvS).

2.[MacOS access VM Ubuntu using SSH and the operation of cloud(Chinese Blog)](https://www.cnblogs.com/bjwu/p/9853498.html).

## 3.Running and Transmit Files on Remote Cloud/Host

Running files on remote Cloud/host could use `ssh` command, while transmit

files on remote Cloud/host macOS should be use `scp` command.

### 3.1Running files Cloud/Host via ssh

Write project on local guest VM Debian, run program in free remote cloud/Host

macOS via `ssh` the program to there. E.g: a program `test.py` under `~/` in my

local guest VM Debian, just use this code to run in remote cloud/Host

(e.g:macOS):

    ssh cloud_or_host_user_current_name@target.machine.ip.addr python3 < ~/test.py

Do not need to add `-p port_target`, because the ssh default port is `22`, and

we use that port `22`.

refer:

1.[MacOS access VM Ubuntu using SSH and the operation of Cloud(Chinese Blog)](https://www.cnblogs.com/bjwu/p/9853498.html).

### 3.2[SCP: Copy a File Between Two Systems](https://gist.github.com/SofijaErkin/bb59afe064fcc397f5f687efb9fa534c#scp-command-combat-style)

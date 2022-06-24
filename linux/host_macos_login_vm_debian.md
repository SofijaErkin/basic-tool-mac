# Host macOS remote login VM Debian

I have just install Debian via VirtualBox in macbook, set NAT connection

between VM Debian and Host macOS.

## 1.VirtualBox Manager: Port Forwarding

Click `VirtualBox` logo and enter that, found out virtual machine OS

`linux_Debian_11`, single right click, choose and click `Setting`,than enter

`linux_Debian_11 - General`, choose and click `Network`, make sure your default

`adapter 1` was `NAT`, and then click `Advanced`, click `Port Forwarding`

button, edit `Guest Port` to `22`, edit `Host Port` to `22` or `22222`, edit

`Name` to `SSH`, edit `Host IP` to `127.0.0.1`, edit `Guest IP` to `10.0.2.15`.

Just liking:

    Name     Protocol     Host IP    Host Port     Guest IP    Guest Port

    SSH      SSH          127.0.0.1   22222        10.0.2.15   22

refer:

1.[VirtualBox Host ssh to Guest](https://superuser.com/a/507703).

2.[How to access a NAT guest from host with VirtualBox](https://www.xmodulo.com/access-nat-guest-from-host-virtualbox.html).

3.[Easy way to SSH into VirtualBox machine | Any OS](https://dev.to/developertharun/easy-way-to-ssh-into-virtualbox-machine-any-os-just-x-steps-5d9i).

4.[The Network configuration of Ubuntu after installed in Mac via VirtualBox(Chinese Blog)](https://www.muouseo.com/article/qd7yq9pe2w.html)

5.[How to access the Web server under Virtual machine(Chinese Blog)](https://codeantenna.com/a/BIK7VaksyV).

## 2.VM Debian

### 2.1Install SSH in Debian

No matter you are Debian or even Ubuntu, just use:

    sudo apt update

    sudo apt install openssh-server

Check out whether the server of SSH has opened:

    ps -e | grep ssh

If you saw `sshd`, then the server of SSH was opening; Or, just use the code to

start the server of SSH:

    sudo /etc/init.d/ssh start

### 2.2Config SSH Server

Just set SSH port to `22` via comment the `#` before `#Port 22` at

`/etc/ssh/sshd_config`, use VIM to open and edit via

`sudo vim /etc/ssh/sshd_config`, and edit that `Port` line to:

    Port 22 # if set port forwarding at Host was 22, then -p do not need to write

### 2.3Ensure IP

Just use one of the codes to make sure the IP of VM/Guest Debian/Ubuntu and

keep it in mind: `hostname -I`; `hostname -I | awk '{print $1}'`;

`ip route get 1.2.3.4 | awk '{print $7}'`.

E.g: `hostname -I`:

    10.0.2.15

the IP was that you need to set that `Guest IP` at Step1:

`VirtualBox Manager: Port Forwarding`.

refer:

1.[The Network configuration of Ubuntu after installed in Mac via VirtualBox(Chinese Blog)](https://www.muouseo.com/article/qd7yq9pe2w.html).

2.[Macbook SSH with VM Kail and Settings auto login once Kail Power on(Chinese)](https://codeantenna.com/a/f9I5eLTOvS).

3.[MacOS access VM Ubuntu using SSH and the operation of Cloud](https://www.cnblogs.com/bjwu/p/9853498.html).

## 3.Host macOS

### 3.1Install SSH on macOS

All modern Macs running macOS or Mac OS X come with SSH pre-installed by

default.

### 3.2Test SSH with VM Debian

Just use the code to connect with VM Debian/Ubuntu:

    ssh -p 22222 my_debian_user_name@127.0.0.1

Then,you got:

    The authenticity of host '127.0.0.1 (127.0.0.1)' can't be established.

    ECDSA key fingerprint is SHA256:xxx.

    Are you sure you want to continue connecting (yes/no)? yes

    Warning: Permanently added '10.0.2.15' (ECDSA) to the list of known hosts.

    my_debian_user_name@127.0.0.1's password:

then input my debian user password: `my_debian_user_password`, then got:

    Linux device_Name X.YZ.Z-ZZ-amd64 #1 SMP Debian X.YZ.XYZ-X (20XX-0X-XX) x86_64

    The programs included with the Debian GNU/Linux system are free software;

    the exact distribution terms for each program are described in the
    
    individual files in /usr/share/doc/*/copyright.

    Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent

    permitted by applicable law.

    Last login: Thu Mouth Day XX:XX:XX 20XX from localhost

    my_debian_user_name@device_Name:

Just `exit` to quit the remote login.

    my_debian_user_name@device_Name:exit

    logout

    Connection to 127.0.0.1 closed. 

### 3.3No Use Password Remote login

We need to[generate a pair of RSA public/private key](https://gist.github.com/SofijaErkin/6441b5f81d0aa8f54cd73c7aea6a158f#1-generate-ssh-key-pair).

E.g: I just use `ssh-keygen -t rsa -b 4096 -C "macos_login_debian_via_ssh"` to

product a pair of RSA key store under `/User/my_mac_usr_name/.ssh/` with name

`macos_login_debian_id_rsa` and `macos_login_debian_id_rsa.pub`.

#### 3.3.1Push Public Key To  VM Debian

And I push that public key to VM debian:

    ssh-copy-id -p my_debian_user_name@127.0.0.1

Or use this code to push the generated public key to VM debian:

    ssh-copy-id -f -p my_debian_user_name@127.0.0.1

Or just use this to push:

    ssh-copy-id my_debian_user_name@127.0.0.1

then you will see an new generated file name `authorized_keys` under your VM

debian `/home/my_debian_user_name/.ssh`, and the file `authorized_keys`'s text

is that the generated public key `macos_login_debian_id_rsa.pub`'s text.

#### 3.3.2Private Key Settings

#### 3.3.2.1Start SSH-Agent in the Background

Just use this code: `eval "$(ssh-agent -s)"`; That terminal prompt:

`> Agent pid 59566`.

#### 3.3.2.2[Configure SSH config file](https://gist.github.com/SofijaErkin/6441b5f81d0aa8f54cd73c7aea6a158f#22-configure-ssh-config-file)

    cd && cd /Users/user_name/.ssh && vim config

Add the below to `/Users/user_name/.ssh/config`, save and active:

    Host debian

         Hostname 127.0.0.1

         User my_debian_user_name

         AddKeysToAgent yes

         UseKeychain yes

         IdentityFile /Users/my_mac_usr_name/.ssh/macos_login_debian_id_rsa

#### 3.3.2.3Add to SSH-Agent

    ssh-add -K /Users/my_mac_usr_name/.ssh/macos_login_debian_id_rsa

That terminal prompt: `4096 SHA256:.../Users/my_mac_usr_name/.ssh/macos_login_debian_id_rsa(RSA)`.

#### 3.3.2.4Settings short key

If you are using `Zsh`, just edit `~/.zshrc` and add the below code line, and active

via `source ~/.zshrc`:

    alias debian="ssh -p 22222 my_debian_user_name@debian"

Or if you are using `Bash`, just edit `~/.bashrc`, add the below, and active

via `source ~/.bashrc`:

    alias debian="ssh -p 22222 my_debian_user_name@debian"

Now, you could just use `debian` to remote login VM Debian in Macbook's terminal.

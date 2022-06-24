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

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

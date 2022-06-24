# NAT SSH Login Between VM Linux and Host macOS

I have a macbook, and I need to write server project, so I have to install

VirtualBox on my macbook, also, I enjoy wandering into Debian,. Again, I

have install and config Debian into VirtualBox.

## 0.My Question

Now, my question are: I have needed to login VirtualBox's Debian in my macbook

terminal; As the same time, I have enough interests on logging into macbook

with my VirtualBox Debian's terminal.

## 1.My Network Environment

I've just set NAT connection between my VirtualBox Debian and macbook. In NAT

status, that the virtual machine could access the host machine via

`ssh host_user_name@host.local.ip.address`, while the host machine need to

set port forwarding to access the virtual machine via

`ssh -p port_forwarding_port virtualmachine_user_name@127.0.0.1`.

As the below image show:

![NAT Connection](https://digglife.net/wp-content/uploads/2011/05/shared-networking.png "NAT")

## 3.RoadMap

### 3.1.Host macOS remote login VM Debian

### 3.2.VM Debian remote login Host macOS

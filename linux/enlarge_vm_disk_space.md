# Enlarge VirtualBox VM Debian disk space

When we create VMs on VirtualBox, we may choose automatically distribute disk

space, but that auto-distributed disk space has been limited by the VirtualBox.

For example, I just create a virtual machine Debian use VirtualBox on MacOS.

The new VM Debian get 12GB disk space, but a few days later, all the 12GB has

been used by Debian. Thus, I need to manually enlarge the disk space of VM

Debian because the notifications says "Low Disk Space This computer has only

245.3MB disk space remaining.".

## 1.Manually Enlarge Virtual Size

### 1.1 Using VirtualBox Media Manager On Host/VirtualBox

First, click the VirtualBox APP using your TrackPad; Second, find out the menu

of 'VirtualBox' on the right of the apple logo; Third, find the menu of 'File'

on the right of menu 'VirtualBox'; Fourth, click the menu 'File' and choose

"Virtual Media Manager" to click; Fifth, change the number of 'Size', e.g:

'20.00GB'. Sixth, click 'Apply' to make sure. Seventh, click `close` to exit.

But I suggest that enlarge triple size of the current disk space. E.g:'30GB'.

## 2.Manually Extend VM Partition

### 2.1 Via GParted on VM Debian

## 3.Refer

1.[How to Enlarge a Virtual Machine’s Disk in VirtualBox or VMware.](https://www.howtogeek.com/124622/how-to-enlarge-a-virtual-machines-disk-in-virtualbox-or-vmware/)

2.[VirtualBox: How to solve the issue with low disk space.](https://blog.surges.eu/virtualbox-how-to-solve-the-issue-with-low-disk-space/)

3.[Using GParted to enlarge the VirtualBox VM space(Chinese Blog).](https://cloud.tencent.com/developer/article/1631881)

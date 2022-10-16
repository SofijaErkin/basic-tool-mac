# Enlarge VirtualBox VM Debian disk space

When we create VMs on VirtualBox, we may choose automatically distribute disk

space, but that auto-distributed disk space has been limited by the VirtualBox.

For example, I just create a virtual machine Debian use VirtualBox on MacOS.

The new VM Debian get 12GB disk space, but a few days later, all the 12GB has

been used by Debian. Thus, I need to manually enlarge the disk space of VM

Debian because the notifications says "Low Disk Space This computer has only

245.3MB disk space remaining.".

## 1.Manually Enlarge Virtual Size

### 1.1 VirtualBox Media Manager On Host/VirtualBox

First, click the VirtualBox APP using your Trackpad; Second, find out the menu

of 'VirtualBox' on the right of the apple logo; Third, find the menu of 'File'

on the right of menu 'VirtualBox'; Fourth, click the menu 'File' and choose

"Virtual Media Manager" to click; Fifth, change the number of 'Size', e.g:

'20.00GB'. Sixth, click 'Apply' to make sure. Seventh, click `close` to exit.

## 2.Manually Mount The New Distributed Space

### 2.1 Via gparted on VM Debian

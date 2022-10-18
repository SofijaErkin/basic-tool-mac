# Enlarge VirtualBox VM Debian disk space(Dynamically allocated storage)

When I create VMs on VirtualBox, I just choose automatically distribute disk

space, but that auto-distributed disk space has been limited by the VirtualBox.

For example, I just create a virtual machine Debian using VirtualBox on MacOS.

The new VM Debian get 12GB disk space, but a few days later, all the 12GB has

been used by Debian. Thus, I need to manually enlarge the disk space of VM

Debian because the notifications says "Low Disk Space This computer has only

245.3MB disk space remaining.".

If you create VM using VirtualBox, choose fixed size storage, and your VM disk

space has stayed low, you need to create a new `.vdi` disk bigger than the

limited disk, and copy the date from the limited disk to the larger disk using

`dd` command. Also, do not forget to backup your data before creating enlarge.

Please refer [this(Chinese Blog)](https://www.cnblogs.com/xueweihan/p/5923937.html#2).

## 1.Manually Enlarge Virtual Machine Size

### 1.1 Using VirtualBox Media Manager On Host/VirtualBox

First, click the VirtualBox APP using your TrackPad; Second, find out the menu

of 'VirtualBox' on the right of the apple logo; Third, find the menu of 'File'

on the right of menu 'VirtualBox'; Fourth, click the menu 'File' and choose

"Virtual Media Manager" to click; Fifth, change the number of 'Size', e.g:

'20.00GB'. Sixth, click 'Apply' to make sure. Seventh, click `close` to exit.

But I suggest that enlarge triple size of the current disk space. E.g:'30GB'.

## 2.Manually Change VM Partition

Please backup your data before you manually enlarger the partition of your VM.

After I adjust the disk space of the VM, the Debian also says: "Low Disk Space"

and "This computer has only 244.7MB disk space remaining", I just use `df -h`

to check the actual usage of disk space:

    Filesystem     1K-blocks     Used Available Use% Mounted on
    
    /dev/sda1        11G   11G     0 100% /

As I see, the disk space of VM Debian is the same size. So I'm not able to

access any of this space yet.

That means the VM do not recognize the new enlarged partition, that's the guest

VM can not use the new free space, so I need to manually change the partition

of VM Debian, this's I will now eed to extend the VM Debian's partition.

Changing or resizing the partition of the VM guest's partition use `GParted`.

Just simple boot the GParted ISO image in my VM or install GParted via apt on

terminal if my VM have enough disk space.

Because I have no more than one byte on my VM Debian, I just use the GParted

live CD's ISO file.

### 2.1 Via GParted on VM Debian

1.Download the ISO file of GParted from [Org](https://gparted.org/download.php).

2.Loading the GParted ISO.

First, shut down the VM Debian;

Second, click APP VirtualBox to enter and right click to choose the `setting`

menu;

Third, click `Storage` and find out `Controller: SATA` to click;

Fourth, choose the button `Adds optional drive` and click `Add`;

Fifth, choose ISO `gparted-live-1.4.0-5-amd64.iso` with `Open` button to load and

click `gparted-live-1.4.0-5-amd64.iso` and click 'Choose' button.

Sixth, click `Ok` button to start settings.

But once start the VM Debian, that only display one light down space. Because

there is no disk space for Debian and quit Debian during upgrade software, this

time I can not use graph playstation GParted to manually extend the partition

of VM Debian.

3.If you can use the GParted to manually enlarger your extended disk space,

please refer below:

[How to Enlarge a Virtual Machine’s Disk in VirtualBox or VMware.](https://www.howtogeek.com/124622/how-to-enlarge-a-virtual-machines-disk-in-virtualbox-or-vmware/)

[VirtualBox: How to solve the issue with low disk space.](https://blog.surges.eu/virtualbox-how-to-solve-the-issue-with-low-disk-space/)

[Using GParted to enlarge the VirtualBox VM space(Chinese Blog).](https://cloud.tencent.com/developer/article/1631881)

[The solution of Low disk space on VirtualBox VM Ubuntu(Chinese Blog).](https://blog.csdn.net/qq_46170379/article/details/116808669)

[How to deal with low disk space on Ubuntu via enlarging disk(Chinese Blog).](https://blog.csdn.net/weixin_44886002/article/details/112061001?utm_medium=distribute.pc_relevant.none-task-blog-baidujs_title-0&spm=1001.2101.3001.4242)

### 2.2 Via command On Terminal(Repartition a disk space on a remote VM)

There are two ways to enlarge the partition of VM. One is that enlarge the

source partition into big partition than the formal size of the source

partition; Another is that create a new partition and mount that new partition

with the data space of VM.

Refer: [Enlarge the partition and file system of System disk for Linux(Chinese).](https://support.huaweicloud.com/usermanual-evs/evs_01_0072.html)

#### 2.2.1Enlarge the source partition into bigger partition

Once quitting the VM Debian during upgrading software or others, there only

have a light down space. So I need use `Ctrl` + `Alt` + `Fn`(n from 1 to 6).

The `n` under `Fn` dependent the work station of VM. Just my Debian use `F2`.

After `"Ctrl" + "ALt" + "F2"` are being touched, the VM will enter the terminal

status.

Just use the uer name and password to login the VM.

As the terminal shows after I typing `sudo fdisk -l`:

    Disk /dev/sda: 30 GiB, 32212254720 bytes, 62914560 sectors
    Disk model: VBOX HARDDISK
    Units: sectors of 1 * 512 = 512 bytes
    Sector size (logical/physical): 512 bytes / 512 bytes
    I/O size (minimum/optimal): 512 bytes / 512 bytes
    Disklabel type: dos
    Disk identifier: 0x50c3fc86

    Device     Boot    Start      End  Sectors  Size Id Type
    /dev/sda1  *        2048 23164927 23162880   11G 83 Linux
    /dev/sda2       23166974 25163775  1996802  975M  5 Extended
    /dev/sda5       23166976 25163775  1996800  975M 82 Linux swap / Solaris

and terminal shows after typing `df -hT`:

    Filesystem     Type      Size  Used Avail Use% Mounted on
    udev           devtmpfs  465M     0  465M   0% /dev
    tmpfs          tmpfs      98M  2.4M   96M   3% /run
    /dev/sda1      ext4       11G   11G     0 100% /
    tmpfs          tmpfs     489M     0  489M   0% /dev/shm
    tmpfs          tmpfs     5.0M  4.0K  5.0M   1% /run/lock
    tmpfs          tmpfs      98M   60K   98M   1% /run/user/1000

also, terminal shows after typing `df -hi`:

    Filesystem     Inodes IUsed IFree IUse% Mounted on
    udev             117K   389  116K    1% /dev
    tmpfs            123K   665  122K    1% /run
    /dev/sda1        708K  297K  412K   42% /
    tmpfs            123K     1  123K    1% /dev/shm
    tmpfs            123K     4  123K    1% /run/lock
    tmpfs             25K    67   25K    1% /run/user/1000

Referring about using terminal resize the disk partition of VM:

[Resize Disk Partition on Remote VM Server(Ask Ubuntu)](https://askubuntu.com/questions/109215/resize-disk-partition-on-remote-vm-server/109224#109224).

[Increase partition size on which Ubuntu is installed?(Ask Ubuntu)](https://askubuntu.com/questions/116351/increase-partition-size-on-which-ubuntu-is-installed).

#### 2.2.2Create a new partition with mounting to data space of VM

Please refer:

[Enlarge the disk size on VirtualBox VM(Chinese Blog).](https://blog.csdn.net/don_chiang709/article/details/82797256?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-82797256-blog-90685295.pc_relevant_layerdownloadsortv1&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-82797256-blog-90685295.pc_relevant_layerdownloadsortv1&utm_relevant_index=1)

[Enlarge the disk space on VirtualBox VM(Chinese Blog).](https://blog.csdn.net/xiaoxiangzi520/article/details/111291634)

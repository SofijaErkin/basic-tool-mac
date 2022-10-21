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

Please refer: [Using command dd copy the virtual OS into new virtual disk](https://www.cnblogs.com/xueweihan/p/5923937.html#2) for

fixed size storage VM(Chinese Blog).

## 1.Backup my VM

### 1.1Local VM

My VM Debian has just installed on MacOS via VirtualBox, VM Debian is a `.vdi`

image file, I have just needed to copy that file into other direction differ

than the source direction, e.g: local host machine desktop or external disk.

Check my VM debian's location, it was under

    /Users/my_user_name/VirtualBox VMs/linux_Debian_system_version/linux_Debian_image_name.vdi

Check my local host machine MacOS desktop's location:

    /Users/my_user_name/Desktop/

Check my external disk's location:

    /Volumes/my_external_disk/

I just use command `cp` to backup the `.vdi` under my desktop(This takes about

30 seconds and generate the same `UUID`):

(Just use my host machine terminal)

    cd ~
    cp "/Users/my_user_name/VirtualBox VMs/linux_Debian_system_version/linux_Debian_image_name.vdi" "/Users/my_user_name/Desktop/linux_Debian_image_backup_name.vdi"

if you use `cp` to backup that `.vdi` under the external disk, that will takes

a few minutes but less than using command `VBoxManage clonehd`.

Or, I just use command `VBoxManage clonehd` to backup that `.vdi` under my

external disk(this takes a few minutes and generate a new `UUID`):

(Just use my host machine terminal)

    cd ~
    cd "/Users/my_user_name/VirtualBox VMs/"
    VBoxManage clonehd "/Users/my_user_name/VirtualBox VMs/linux_Debian_system_version/linux_Debian_image_name.vdi"  "/Volumes/my_external_disk/linux_Debian_image_backup_name.vdi"

refer:

[Test of coping and moving vdi file(Chinese Blog).](https://www.finclip.com/news/f/8791.html)

[Sync the disk of virtual machine(Chinese Blog).](https://www.cnblogs.com/xueweihan/p/5923937.html#2)

### 1.2Remote VM or Cloud host machine or Cloud server

#### 1.2.1Another disk

If you have another disk bigger than the one disk, e.g: the one source disk is

13GB and another disk has 32 GB, you can use command `dd` to backup all the one

source disk(the one source disk is under `/dev/sda/`, another disk is under

`/dev/sdb/`):

(Just ssh login your remote machine via local host terminal)

    cd ~
    ssh root_or_user_name@remoteIP -p port_number_ "dd if=/dev/sda " | dd of=/dev/sdb

Or, use default port:

    cd ~ 
    ssh root_or_user_name@remoteIP "dd if=/dev/sda " | dd of=/dev/sdb

Also, if your data disk partition has been deleted, then restore the source

data disk partition:

    cd ~
    ssh root_or_user_name@remoteIp "dd if=/dev/sdb" | dd of=/dev/sda

refer:

[Using command dd copy the virtual OS into new virtual disk(Chinese Blog)](https://www.cnblogs.com/xueweihan/p/5923937.html#2)

[Using command dd manually operate disk on Linux(Chinese Blog).](https://blog.csdn.net/ACMer_L/article/details/107593891)

[The detail of SSH on Linux(Chinese Blog).](https://www.jianshu.com/p/d32414af2001)

#### 1.2.2Create image

If your remote VM or cloud server has the console or API, you can manually

create an image and download into the local. E.g: aws(.vdmk), alibaba

cloud(.oss).

If you have more than 50% free disk space, you can create a image for your disk

partition via an `.image` file, and use command `scp` to download that backup

image file to local:

(Just in your local machine terminal)

    cd ~

    ssh root_or_user_name@remoteIP -p port_number_ "dd if=/dev/sda" | \
    dd of=/remote_home/remote_user_name/Document/remote_vm_backup_image_file.image

    scp -P port_number_ root_or_user_name@remoteIP:/remote_home/remote_user_name/Document/remote_vm_backup_image_file.image /local_home/local_user_name/Desktop/remote_vm_backup_image_file_in_local.image

Also, if your source data disk partition has been deleted, then restore the

local backup file into remote virtual machine:

    cd ~

    scp -P port_number_ /local_home/local_user_name/Desktop/remote_vm_backup_image_file_in_local.image root_or_user_name@remoteIP:/remote_home/remote_user_name/Document/remote_vm_backup_image_file.image 

    ssh root_or_user_name@remoteIP -p port_number_ "dd if=/remote_home/remote_user_name/Document/remote_vm_backup_image_file.image" | \
    of=/dev/sda

All detail about the backup of system disk and data disk on Cloud Virtual

Machine, please refer [the document of Tencent Cloud](https://www.tencentcloud.com/document/product/213/17284).

If your do not have more than 50% free disk space, then you should compress the

backup image file,

e.g:
(backup below)

    cd ~ && ssh user@remote "dd if=/dev/sda | gzip -1 -" | dd of=image.gz
    scp image.gz /local_home/user_name/Desktop/image_local_backup.gz

(restore)

    cd ~ && scp /local_home/user_name/Desktop/image_local_backup.gz image.gz

    ssh user@remote "dd if=image.gz | gzip -dc -" | dd of=/dev/sda

or, if the upstairs do not work, just try(the below and upstairs should be

check twice, again and again!):

    cd ~ && scp /local_home/user_name/Desktop/image_local_backup.gz image.gz

    ssh user@remote "gzip -dc image.gz" | dd of=/dev/sda

refer:

[Exporting an instance as a VM using VM Import/Export(AWS Document).](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)

[backup an existing linux server to a virtualbox virtual machine(server fault).](https://serverfault.com/a/451039/989101)

[How to dd a remote disk using SSH on local machine and save to a local disk(UNIX&LINUX).](https://unix.stackexchange.com/a/132800/335824)

[Clone a remote Linux server with rsync and migrate it locally as Virtual Machine(server fault).](https://serverfault.com/a/915124/989101)

[Command scp of Linux(Chinese Blog).](https://www.runoob.com/linux/linux-comm-scp.html)

[The command scp of Linux(Chinese Blog).](https://www.runoob.com/linux/linux-comm-scp.html)

#### 1.2.3Rsync backup

[Using rsync backup the remote VM(Chinese Blog).](https://www.jianshu.com/p/b0157e4ab801)

#### 1.2.4Sftp backup

[Using sftp backup the remote VM(Chinese Blog).](https://www.myfreax.com/how-to-use-linux-sftp-command-to-transfer-files/)

## 2.Manually Enlarge Virtual Machine Size

### 2.1 Using VirtualBox Media Manager On Host/VirtualBox

First, click the VirtualBox APP using your TrackPad; Second, find out the menu

of 'VirtualBox' on the right of the apple logo; Third, find the menu of 'File'

on the right of menu 'VirtualBox'; Fourth, click the menu 'File' and choose

"Virtual Media Manager" to click; Fifth, change the number of 'Size', e.g:

'40.00GB'. Sixth, click 'Apply' to make sure. Seventh, click `close` to exit.

But I suggest that enlarge quintuple size of the current disk space.

E.g:'60GB'.

## 3.Manually Change VM Partition

There are two ways to enlarge the partition of VM. One is that enlarge the

source partition into bigger partition than the formal size of the source

partition; Another is that create a new partition and mount that new partition

with the data space of VM.

Refer:

[Extend the logical volume(AWS:Premium Support-knowledge center).](https://aws.amazon.com/premiumsupport/knowledge-center/create-lv-on-ebs-partition/)

[Enlarge the partition and file system of System disk for Linux(Chinese).](https://support.huaweicloud.com/usermanual-evs/evs_01_0072.html)

Notice: `sudo resize2fs /dev/sda1` - this form will default to making the

filesystem to take all available space on the partition.

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

### 3.1 Via GParted on VM Debian

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

### 3.2 Via command On Terminal(Repartition a disk space on a remote VM)

#### 3.2.1Enlarge the source partition into bigger partition

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

[How to extend filesystem partition on Ubuntu VM?(UNIX&LINUX).](https://unix.stackexchange.com/a/418412/335824)

[VirtualBox Increase Size of Ubuntu Linux(Stack overflow).](https://stackoverflow.com/a/47551808/10846570)

[how to let Ubuntu see that I increased disk size in azure portal(Stack overflow).](https://stackoverflow.com/a/59435121/10846570)

[How do resize an OS partition(Stack overflow).](https://askubuntu.com/a/1418366/922190)

[the GNU Parted Manual(GNU Org).](https://www.gnu.org/software/parted/manual/html_node/parted_toc.html#TOC31)

[Extend a Linux file system after resizing a volume(AWS Document).](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recognize-expanded-volume-linux.html)

[Expand virtual hard disks on a Linux VM with the Azure CLI(Azure Document).](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/expand-disks)

[How to Resize Droplets(DigitalOcean Document).](https://docs.digitalocean.com/products/droplets/how-to/resize/)

[Resize the file system and partitions(Google Cloud).](https://cloud.google.com/compute/docs/disks/resize-persistent-disk)

[Extending MBR Partitions and File Systems Offline (Tencent Cloud Document)](https://www.tencentcloud.com/document/product/362/39998)

[Extend the partitions and file systems of disks on a Linux instance(Alibaba Cloud Document).](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/resize-disks-online-for-windows-instances)

[Extending Partitions and File Systems for System Disks(Huawei Cloud Document).](https://support.huaweicloud.com/intl/en-us/usermanual-evs/evs_01_0072.html)

#### 3.2.2Create a new partition with mounting to data space of VM

Please refer:

[Enlarge the disk size on VirtualBox VM(Chinese Blog).](https://blog.csdn.net/don_chiang709/article/details/82797256?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-82797256-blog-90685295.pc_relevant_layerdownloadsortv1&depth_1-utm_source=distribute.pc_relevant_t0.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1-82797256-blog-90685295.pc_relevant_layerdownloadsortv1&utm_relevant_index=1)

[Enlarge the disk space on VirtualBox VM(Chinese Blog).](https://blog.csdn.net/xiaoxiangzi520/article/details/111291634)

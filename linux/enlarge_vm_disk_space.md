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

## 0.Base memory and Swap partition

Even I want to enlarge my base memory of my VirtualBox VM, I just run only one

VM on my host machine, there is no need to extend the base memory of my VM,

and the space of swap partition is less than the base memory of my VM, also,

there is no need to expand the swap partition.

refer:

[How to change the RAM allocated to an OS in VirtualBox?](https://superuser.com/a/926341)(Super User)

[How much memory (RAM) should I allocate to the Virtual Machine?](https://askubuntu.com/a/150107)(Ask Ubuntu)

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

Notice: command `ssh` choose port using `-p`, while command `scp` using `-P`.

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
    scp -P port_number_ image.gz /local_home/user_name/Desktop/image_local_backup.gz

(restore)

    cd ~ && scp -P port_number_ /local_home/user_name/Desktop/image_local_backup.gz image.gz

    ssh user@remote "dd if=image.gz | gzip -dc -" | dd of=/dev/sda

or, if the upstairs do not work, just try(the below and upstairs should be

check twice, again and again!):

    cd ~ && scp -P port_number_ /local_home/user_name/Desktop/image_local_backup.gz image.gz

    ssh user@remote "gzip -dc image.gz" | dd of=/dev/sda

Please use the second of compressing image to restore source disk.

Notice: `gunzip -c file.image.gz` equals `gzip -dc file.image.gz`, `-d` means

decompress.

If you want to restore the remote VM into local VirtualBox, just use:

    cd ~ && gzip -dc /local_home/user_name/Desktop/image_local_backup.image.gz

    cd "/Users/my_user_name/VirtualBox VMs/" 

    VBoxManage convertdd /local_home/user_name/Desktop/image_local_backup.image restore_virtualbox_image.vdi --format VDI 

But the upstairs maybe end with Fatal:`Virtual Box: No bootable medium found!`.

refer:

[Restoring Stuff with dd(Real Tech Talk).](https://realtechtalk.com/dd_how_to_backup_and_restore_disk_images_including_compression_with_gzip-2261-articles)

[DD to restore compressed hard drive images(Linux Questions Org).](https://www.linuxquestions.org/questions/slackware-14/dd-to-restore-compressed-hard-drive-images-4175532385/)

[DD Backup, Compress, and Restore(GitHub Gist).](https://gist.github.com/JonathanPorta/06e74e6a0a1f89f895aa)

[Exporting an instance as a VM using VM Import/Export(AWS Document).](https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html)

[backup an existing linux server to a virtualbox virtual machine(server fault).](https://serverfault.com/a/451039/989101)

[How to dd a remote disk using SSH on local machine and save to a local disk(UNIX&LINUX).](https://unix.stackexchange.com/a/132800/335824)

[Clone a remote Linux server with rsync and migrate it locally as Virtual Machine(server fault).](https://serverfault.com/a/915124/989101)

[The usage of gzip and gunzip(Chinese Blog).](https://codeantenna.com/a/Nw8hVT1cUe)

[Command scp of Linux(Chinese Blog).](https://www.runoob.com/linux/linux-comm-scp.html)

[The command scp of Linux(Chinese Blog).](https://www.runoob.com/linux/linux-comm-scp.html)

#### 1.2.3Rsync backup

If your remote VM only have 0% free disk partition, you have to download all

the files or folders under remote partition `/dev/sda` with its' mounted

directory `/`, you need to use command `scp`, `rsync` or even sftp services.

But command `scp` disappear file permissions, date attributes and soft links,

even do not support incremental backup. E.g:

    scp -P port_number_-r user@remoteIp:// /local_home/local_user/remoteVMbackup/

Thought the user and group of file will become the user and group of login

account, command `rsync` do better than `scp`.

Backup all the files or folders of the remote VM:

(Just under your local terminal)

    rsync -avl --delete --progress --exclude '/dev/' --exclude '/proc/' user@remoteIP:// /local_home/local_user/remoteVmBackup/

or, in short:

    rsync -avl user@remoteIP:// /local_home/local_user/remoteVmBackup/ 

refer:

[rsync(1) - Linux man page(Linux Die).](https://linux.die.net/man/1/rsync)

[How to use Rsync on Windows 10 and Rsync alternative software(MiniTool Japan).](https://jp.minitool.com/backup-tips/rsync-windows.html)

[rsync document(archLinux Japan).](https://wiki.archlinux.jp/index.php/Rsync)

[Copying files with rsync(Japanese Blog).](https://documentation.suse.com/ja-jp/sles/15-SP1/html/SLES-all/cha-net-rsync.html)

[Rsync options(Japanese Blog).](https://qiita.com/bezeklik/items/22e791df7187958d76c1)

[Six rules that first-time rsync users should know(Japanese Blog)](https://www.itmedia.co.jp/enterprise/articles/0804/21/news013.html)

[backup an existing linux server to a virtualbox virtual machine(Server fault).](https://serverfault.com/q/451030/989101)

[Rsync: auto-matic backup and sync the remote Linux(Chinese Blog).](https://blog.csdn.net/renfeigui0/article/details/100988910)

[Copy the remote files via rsync(Chinese Blog).](https://www.jianshu.com/p/d32414af2001)

[Using rsync backup the remote VM(Chinese Blog).](https://www.jianshu.com/p/b0157e4ab801)

#### 1.2.4Sftp or FTP backup

If you do not know the content structure of remote VM, you can use `sftp`:

(Just under your local terminal)

    cd ~ && cd /local_home/local_user/remoteVMbackupSFTP/

    sftp -P port_number_ user@remoteIp

    cd // && get -r //

Also, you can use FTP server to download the remote VM into local machine.

refer:

[Using SFTP for Remote File Transfer from the Command Line(Portland State University).](https://cat.pdx.edu/platforms/linux/remote-access/using-sftp-for-remote-file-transfer-from-command-line/)

[Upload & Download From Remote FTP & SFTP(ARC Cdata).](https://arc.cdata.com/kb/articles/ftp-and-sftp-clients.rst)

[How to Download and Upload Remote Directory in sFTP(Linux shell tips).](https://www.linuxshelltips.com/download-upload-directory-in-sftp/)

[How to Transfer Files using SFTP?(Geeks for geeks).](https://www.geeksforgeeks.org/how-to-transfer-files-using-sftp/)

[SFTP: Logging In to a Remote System to Copy a File(ORACLE).](https://docs.oracle.com/cd/E26502_01/html/E29001/remotehowtoaccess-14.html)

[sftp(1) — Linux manual page.](https://man7.org/linux/man-pages/man1/sftp.1.html)

[How To Use SFTP to Securely Transfer Files with a Remote Server(Digital Ocean)](https://www.digitalocean.com/community/tutorials/how-to-use-sftp-to-securely-transfer-files-with-a-remote-server)

[How to Backup a Hyper-V VM Remotely Online(Backup Chain USA).](https://hyper-v-backup.backupchain.com/back-up-a-hyper-v-virtual-machine-to-ftp-site-how-to/)

[Using sftp copy the remote file(Chinese Blog).](https://www.jianshu.com/p/d32414af2001)

[Using sftp backup the remote VM(Chinese Blog).](https://www.myfreax.com/how-to-use-linux-sftp-command-to-transfer-files/)

[Using FTP download remote VM into local(Alibaba Cloud Chine).](https://help.aliyun.com/document_detail/159174.html)

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

or, terminal shows after typing `df -iTh`:

    Filesystem     Type     Inodes IUsed IFree IUse% Mounted on
    udev           devtmpfs   117K   378  116K    1% /dev
    tmpfs          tmpfs      123K   721  122K    1% /run
    /dev/sda1      ext4       2.3M  297K  2.0M   13% /
    tmpfs          tmpfs      123K     1  123K    1% /dev/shm
    tmpfs          tmpfs      123K     4  123K    1% /run/lock
    tmpfs          tmpfs       25K   120   25K    1% /run/user/1000

Notice: This Gist mainly major in this place!!!

Just as my command `sudo fdisk -l` shows, if I need to distribute some of the

free space or unpartitioned space, I should remove all the partitions between

the main partition and the free space. This is the moment to witness the

miracle!

(Please login your virtual machine terminal)

(1)Turn off the swap permissions: `sudo swapoff /dev/sda5`;

And use command `free -h` to check whether swapoff do matter or not, if you see

the free or total space percent of swap partition is `0B`, that means

successfully turn off the swap; Or, `lsblk` will not display the `[SWAP]` at

the line of `/dev/sda5`; Or `lsblk -f | grep "swap"` will not show the percent

of free space and used space, e.g: `sda5 swap 1 UUID`.

Also, I just use command `lsblk -f | grep "swap"` to catch the `UUID` of swap

partition.

Others, reboot or restart will automatically turn on the swap, using command

`sudo swapoff swap_partition_directory` just temporarily turn off swap.

(2)Remove or delete the swap partition `/dev/sda5` and extended partition

`/dev/sda2`:

I can use `fdisk`, `cfdisk`, `sfdisk`, `parted` or even `gdisk`, because they

has been installed under every Linux system, including Debian, Ubuntu and so

on. Also, I do not have to manually install liking `cloud-guest-utils` tools.

At this point, I recommend `cfdisk` and `gdisk`. Just use `cfdisk` for example.

    sudo cfdisk

The upstairs will enter the place of cfdisk.

I remember the partition type, filesystem UUID and filesystem of main partition

`/dev/sda1`, extended partition `/dev/sda2` and swap partition `/dev/sda5`.

Just use `up` direction button and `down` direction button to choose partition,

use `right` direction button and `left` direction button to choose operation.

Firstly, Removing swap partition `/dev/sda5`: touch twice `down` direction

button and twice `left` direction button and once `enter` button;

Secondly, removing extended partition `/dev/sda2`: touch once `up` direction

button and twice `left` direction button and once `enter` button;

(3)Resize the main partition `/dev/sda1`, the source space of `/dev/sda1` is

`12.96GB`, all the virtual disk has 40GB, so I just let `/dev/sda1` `32GB` or

`36GB` or `39GB`.

Extended and swap partition also has the source size `975MB` or less.

Notice, if a disk or partition space has been used up to `80%`, there is a

dangerous status. We should enlarge the disk space before `80%` used storage.

I need the resized main partition `/dev/sda1` has the same start cylinder

(e.g: start 2048) with the source main partition `/dev/sda1`, if `cfdisk` can't

do that, I will use `parted` even `gdisk`.

Thirdly, resize the main partition `/dev/sda1`: once `up` direction and once

`right` direction and once `enter` button; Remove the automatic size `40GB`,

change that into `36GB` and push `enter` button; four times `right` direction

button and once `enter` to write the operations using `cfdisk`, and type `yes`

to ensure; then three times touch `left` direction button to quit the `cfdisk`.

As the cfdisk menu display, the resized new main partition has the same

cylinder with the form source main partition. So, next.

Others, [Automatic the process of expanding the partition](https://askubuntu.com/q/1420719/922190). E.g, an VM `Ubuntu`

under `Windows` using `sudo fdisk -l`:

    Model: Virtio Block Device (virtblk)
    Disk /dev/vda: 172GB
    Sector size (logical/physical): 512B/512B
    Partition Table: msdos
    Disk Flags:

    Number    Start    End      Size    Type      File system      Flags Mounted
    1        1049kB   512MB    511MB   primary   linux-swap(v1)   boot   
    2        513MB    26.8GB   26.3GB  extended
    5        513MB    1012MB   499MB   logical   ext4
    6        1013MB   16.0GB   15.0G   logical   ext4                    /root
    7        16.0GB   26.8GB   10.8GB  logical   ext4                    /home
and after creating a large virtual machine's disk,  I need to change the display

using `sudo fdisk -l`:

    Model: Virtio Block Device (virtblk)
    Disk /dev/vda: 172GB
    Sector size (logical/physical): 512B/512B
    Partition Table: msdos
    Disk Flags:
    Number    Start    End      Size    Type      File system      Flags Mounted
    1        1049kB   512MB    511MB   primary   linux-swap(v1)   boot   
    2        513MB    26.8GB   26.3GB  extended
    5        513MB    1012MB   499MB   logical   ext4
    6        1013MB   16.0GB   15.0G   logical   ext4                    /root
    7        16.0GB   26.8GB   10.8GB  logical   ext4                    /home
    free     26.8GB   172GB    145GB             free space
Also, I need to this below display after automatically expand the disk using

`sudo fdisk -l`:

    Model: Virtio Block Device (virtblk)
    Disk /dev/vda: 172GB
    Sector size (logical/physical): 512B/512B
    Partition Table: msdos
    Disk Flags:
    Number    Start    End      Size    Type      File system      Flags Mounted
    1        1049kB   512MB    511MB   primary   linux-swap(v1)   boot
    2        513MB    26.8GB   26.3GB  extended
    5        513MB    1012MB   499MB   logical   ext4
    6        1013MB   16.0GB   15.0G   logical   ext4                    /root
    7        16.0GB   172GB    156GB   logical   ext4                    /home
[Follow suggestion](https://unix.stackexchange.com/a/436069) and [idea](https://askubuntu.com/a/1420726/922190).

A.Create the following files on the golden image disk before exporting:

`/etc/rc.local:`

    #!/bin/sh -e

    type /etc/init.d/extend-home-part.sh && /etc/init.d/extend-home-part.sh

    exit 0
`/etc/init.d/extend-home-part.sh:`

    #!/bin/sh

    sudo growpart /dev/vda 2 && sudo growpart /dev/vda 7 && sudo resize2fs /dev/vda7
    sudo mv /etc/init.d/extend-home-part.sh /etc/init.d/extended-home-part.sh

    exit 0

B.Then, create a virtual machine with a larger virtual disk. Have fun!

(4)Re-create extended and swap partition:

I just enable`975MB` to extended partition `/dev/sda2`, and `975MB` to swap

partition `/dev/sda5`, also, the start cylinder of extended partition

`/dev/sda2` less 2 than the start cylinder of the swap partition, thought they

have the same end partition. The start cylinder of the extended partition

bigger 2047 than the end cylinder of main partition `/dev/sda1`.

Fourthly, re-create extended partition: once `down` direction button and once

`enter` button; clean the automatic size `4GB`, change into `975MB`, and push

`enter` button; choose `extended` menu via once `right` direction button,

but the start cylinder of the extended partition is not my needed! So, I just

quit `cfdisk`. If I want to finish my needed, I should use `fdisk` or `parted`

or even `gdisk`. In all, I should let the `cfdisk` operations write work before

I re-create the extended and swap partition.

Fifthly, using `fdisk` to re-create the needed extended partition `/dev/sda2`:

`sudo fdisk /dev/sda` to enter the place`fdisk`; type `n` and `enter`to add a

new partition; type `e` and `enter`to choose extended; type `enter` to named

the partition `/dev/sda2`; type `"(the end cylinder of main partition)+2047"`

and `enter` to set my needed the start cylinder of my new extended partition;

type `+975M` and `enter` to set the size of my new extended partition;

Sixthly, using `fdisk` to re-create the needed swap partition `/dev/sda5`:

type `n` and `enter`to add a new partition; type `l` and `enter`to choose

logical; type `enter` to named the partition `/dev/sda5`; type `enter` to set

default start cylinder; type `enter` to set default end cylinder; type `t` and

`enter` to change a partition type; type `5` to change the partition type of

`/dev/sda5`; type `82` to set `Linux swap / Solaris` into the partition type of

`/dev/sda5`; then type `w` and `enter` to write and sync into the disks.

Just use `sudo mkswap /dev/sda5`  and input your root password to set the file

 type of partition `/dev/sda5` into `swap`, please remember the `UUID` of swap

or logical partition `/dev/sda5`, e.g:

    Setting up swapspace version 1, size = 974 MiB (1021308928 bytes)
    no label, UUID=663053ea-1e9e-4c63-a34f-fa0a069af4cb

and use `sudo resize2fs /dev/sda1` to set all the file types of main

partition `/dev/sda1` into `ext4`.

Then, turn the swap on: `sudo swapon /dev/sda5`.

(5)Copy your swap UUID into `/etc/fstab`: `sudo vim /etc/fstab`, please update

the `UUID` under the line of `swap`, type `i` to edit the file, copy your new

swap `UUID` instead of the old `UUID` of the former swap.

(6)Restart or reboot your virtual machine: `sudo reboot`.

Have fun!!!

Others, how do the expanded VM Debian feel?

Not worse!Debian's Startup is a little slow. The host MacOS automatically shuts

down twice. The host's CPU was overloaded for five minutes without warning, and

I had to quit all programs in use and shut down.

Finally, how to expand the main/root partition on the Work/Company laptop,

please refer: [Later edits with solution from IT(Ask Ubuntu).](https://askubuntu.com/q/1396769/922190)

Notices:

A-Partition types adn file types(refer: [this](https://www.linuxprobe.com/linux-ntfs-fat32.html))

    Partition types          File type
    Id Type           
    c  W95 FAT32 (LBA)       FAT32
    5  Extended
    83 Linux                 ext4
    82 Linux swap / Solaris  swap

B-Others partition types(refer: [this](https://gnu-linux.readthedocs.io/zh/latest/Chapter01/fdisk.html))

     0  Empty           24  NEC DOS         81  Minix / old Lin bf  Solaris
     1  FAT12           27  Hidden NTFS Win 82  Linux swap / So c1  DRDOS/sec (FAT-
     2  XENIX root      39  Plan 9          83  Linux           c4  DRDOS/sec (FAT-
     3  XENIX usr       3c  PartitionMagic  84  OS/2 hidden or  c6  DRDOS/sec (FAT-
     4  FAT16 <32M      40  Venix 80286     85  Linux extended  c7  Syrinx
     5  Extended        41  PPC PReP Boot   86  NTFS volume set da  Non-FS data
     6  FAT16           42  SFS             87  NTFS volume set db  CP/M / CTOS / .
     7  HPFS/NTFS/exFAT 4d  QNX4.x          88  Linux plaintext de  Dell Utility
     8  AIX             4e  QNX4.x 2nd part 8e  Linux LVM       df  BootIt
     9  AIX bootable    4f  QNX4.x 3rd part 93  Amoeba          e1  DOS access
     a  OS/2 Boot Manag 50  OnTrack DM      94  Amoeba BBT      e3  DOS R/O
     b  W95 FAT32       51  OnTrack DM6 Aux 9f  BSD/OS          e4  SpeedStor
     c  W95 FAT32 (LBA) 52  CP/M            a0  IBM Thinkpad hi ea  Rufus alignment
     e  W95 FAT16 (LBA) 53  OnTrack DM6 Aux a5  FreeBSD         eb  BeOS fs
     f  W95 Ext'd (LBA) 54  OnTrackDM6      a6  OpenBSD         ee  GPT
    10  OPUS            55  EZ-Drive        a7  NeXTSTEP        ef  EFI (FAT-12/16/
    11  Hidden FAT12    56  Golden Bow      a8  Darwin UFS      f0  Linux/PA-RISC b
    12  Compaq diagnost 5c  Priam Edisk     a9  NetBSD          f1  SpeedStor
    14  Hidden FAT16 <3 61  SpeedStor       ab  Darwin boot     f4  SpeedStor
    16  Hidden FAT16    63  GNU HURD or Sys af  HFS / HFS+      f2  DOS secondary
    17  Hidden HPFS/NTF 64  Novell Netware  b7  BSDI fs         fb  VMware VMFS
    18  AST SmartSleep  65  Novell Netware  b8  BSDI swap       fc  VMware VMKCORE
    1b  Hidden W95 FAT3 70  DiskSecure Mult bb  Boot Wizard hid fd  Linux raid auto
    1c  Hidden W95 FAT3 75  PC/IX           bc  Acronis FAT32 L fe  LANstep
    1e  Hidden W95 FAT1 80  Old Minix       be  Solaris boot    ff  BBT

C-Partition types can be(refer: [this](https://phoenixnap.com/kb/linux-create-partition))

    Primary – Holds the operating system files. Only four primary partitions can be created.
    Extended – Special type of partition in which more than the four primary partitions can be created.
    Logical – Partition that has been created inside of an extended partition.

D-Reply all the same question at Stack Exchange has been done, Yes!

Referring about using terminal resize the disk partition of VM:

[Low disk space on Filesystem root despite having plenty of space in `home`(Ask Ubuntu).](https://askubuntu.com/q/1396769/922190)

[The idea of creating the swap partition on Linux(Chinese Blog).](http://quenywell.com/linux-how-to-create-swap-space/)

[cfdisk(8) - Linux man page(Linux Die Net).](https://linux.die.net/man/8/cfdisk)

[The partition tolls of Linux: fdisk, cfdisk and sfdisk(Chinese Blog).](https://www.cnblogs.com/RXDXB/p/11890852.html)

[Comparing three Linux partition tools: fdisk, gdisk and parted(Chinese Blog).](https://www.cnblogs.com/zhaojiedi1992/p/zhaojiedi_linux_039_fdisk_gdisk_parted.html)

[How to disable swap forever in Linux(Chinese Blog).](https://www.howtoing.com/disable-swap-partition-in-centos-ubuntu)

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

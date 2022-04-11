# Problem Happens that Debian On Mac Via Parallels

## 1. Problem A

### 1.1 Output

Debian requires Authentication.

### 1.2 Why

We do not enable root user.

### 1.3 Standard Operating Procedure

Enter terminal and input:

    sudo passwd
And terminal output:

    Password(you user password):your_current_user_password
As the upstairs terminal shows, and input your current user password. And output

    Enter new UNIX password:your_new_root_password

    retype new UNIX password: again_your_new_root_password

As the upstairs terminal shows, input twice your new root password.

### 1.4 Refer

[The default root and password during installing centos7 at Parallels Desktop(Chinese Blog)](https://blog.csdn.net/u012852597/article/details/79353949).

## 2. Problem B

### 2.1 Question

I need to change the host name of Debian in the virtual machine at mac.

### 2.2 Standard Operating Procedure

Input below code at your terminal:

    hostnamectl hostname your_new_host_name
`your_new_host_name` is the target host name of Linux.

## 3. Problem C

Enter or logout the root mode.

## 3.1 Standard Operating Procedure

login root mode, input the below code and type "`enter`" key, then type your

root password:

    su -
exit the root mode, just type the code:

    exit
Or

    logout
Or

    Ctrl+D
the upstairs are typing keys.

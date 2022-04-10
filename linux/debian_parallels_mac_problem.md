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

[The default root and password during installing centos7 at Parallels Desktop](https://blog.csdn.net/u012852597/article/details/79353949).

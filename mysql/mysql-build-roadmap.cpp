// This is a roadmap for downloading MySQL on macOS.
// RoadMap: MySQL manually(mac).
//
//
/*
1.download

There are three ways to install MySQL on MacOS: Install using Docker; Use 

Homebrew to run brew install mysql to install; Use the installation package 

to install.

I use the installation package to install, because this installation method 

is more intuitive and controllable, such as the choice of MySQL version and 

password configuration, so let's start next.

home website: https://www.mysql.com/downloads/

download website: https://downloads.mysql.com/archives/community/


It is not recommended to download the latest version, whether you are a 

student or an industrial industry.

Each system version of Mac has its suitable mysql version sequence. For 

example, macOS 10.12 can install mysql version from 5.7.16 to 5.7.22.

Therefore, in the mysql download page, my Product Version chooses 5.7.18, 

of course the Operating System is macOS, and the installation package 

selection is macOS 10.12 (x86, 64-bit), DMG Archive, click download directly.

Since I downloaded mysql in 2017, please choose the corresponding mysql 

version according to your Mac system version, or the latest version of mysql 

is not recommended.


2.install

Find the downloaded mysql mirror installation package in the downlaod of your 

mac's Finder, 

double-click the mysql-5.7.18-macos10.12-x86_64.dmg file to load the image;

double-click mysql-5.7.18-macos10.12-x86_64.pkg to start the installation.

(1)After double-clicking to run the downloaded pkg, click Continue;

(2)After reading the software license agreement, click Continue;

(3)Click install;

(4)Remember the initial password of the installed database (it is better to 

save the screenshot, my initial password is: M7Rju)ofMFMb);

(5)The installation is successful, click close.

The installation process is very simple, just pay attention to a pop-up window 

during the installation process, this window gives the initial password of MySQL 

randomly generated by the system, this password is very important, will be used 

later, be sure to save it.

But I didn't save it when I installed it, so I can't log in after the 

installation. I will tell how to solve the problem of forgetting the password 

later, if I have time.

3.mysql server

Enter mac's system preferences

Click MySQL icon, Will enter the setting interface of the MySQL server

After installation, the default status of MySQL is stopped, closed, you need to 

click the "Start MySQL Server" button to start it, after startup, the status will 

become running. There is also a checkbox button below, you can set whether to 

automatically start MySQL when the system starts, it is checked by default, it is 

recommended to cancel it to save boot time.

4.$PATH

Now we need to configure global variables for MySQL, that is, add the MySQL 

binary command file directory (installation directory/bin) to the PATH path.


Pay attention to the common commands of vim or bash:

1) Press the letter key "i" to edit mode;

2) Press the return key "esc" + input the letter ":wq": save and exit;


If your system's default terminal is generally bash,then

(1) Enter the terminal

(2) vim ~/.bash_profile

Edit the mysql path, and save:

export PATH=/usr/local/mysql/bin:$PATH

alias mysal=/usr/local/mysql/bin/mysql 

alias mysqladmin=/usr/local/mysql/bin/mysqladmin

or

Edit the mysql path, and save

PATH=$PATH:/usr/local/mysql/bin

alias mysal=/usr/local/mysql/bin/mysql 

alias mysqladmin=/usr/local/mysql/bin/mysqladmin


(3) source ~/.bash_profile //Save to make the configuration effective

Or if you are using zsh, then

(1) Enter the terminal

(2) vim ~/.zshrc

Edit the mysql path: 

export PATH=/usr/local/mysql/bin:$PATH

alias mysal=/usr/local/mysql/bin/mysql 

alias mysqladmin=/usr/local/mysql/bin/mysqladmin

then save

or

Edit the mysql path: 

PATH=$PATH:/usr/local/mysql/bin

alias mysal=/usr/local/mysql/bin/mysql 

alias mysqladmin=/usr/local/mysql/bin/mysqladmin

then save

(3) source ~/.zshrc //Save to make the configuration effective


5.mysql client

Now you can log in to mysql through ???mysql -u root -p???, and you will be asked to 

enter the password, which you need to take a screenshot and save on the 

notification center.

The login is successful, but an error will be reported when running the command, 

prompting us to reset the password.

???mysql> show databases;ERROR 1820 (HY000): You must reset your password using ALTER 

USER statement before executing this statement.mysql>???

Change the password, the new password is 123456, use this command:

set PASSWORD =PASSWORD('123456');

OR, if you want to change password to "XYES", just use this command:

SET PASSWORD FOR'root'@'localhost' = PASSWORD('XYES');

or

set password for root@localhost=password('XYES');

Perform "show databases"; again, it is normal.

Enter quit, exit MySQL, and then enter mysql -u root -p (it does not matter whether 

you are in the bin directory of MySQL at this time, because we have configured it 

before, if there is no configuration, you must be in the bin directory), press Enter 

Enter the new password you set to enter MySQL again. So far, the MySQL configuration 

has been completed and you can use it as much as you want.

6.forgot password

How to solve the problem of MySQL forgetting the initial password under MAC? I ignored 

the initial password during the installation process, which resulted in the inability 

to log in after the installation was successful. But as long as you pay attention to 

the prompts during the installation process, you won't step on this pit again.

6.1 Click System Preferences -> MySQL at the bottom, in the pop-up page, close 

the service

6.2

(1) Enter the terminal input

cd /usr/local/mysql/bin/

(2) After pressing Enter, log in to the administrator authority

sudo su

(3) Enter the following command after pressing Enter to disable the mysql 
authentication function

./mysqld_safe --skip-grant-tables &

(4) mysql will automatically restart after pressing Enter (the status of mysql in the 

preferences will become running)

6.3

(1) Input command

./mysql

(2) After pressing Enter, enter the command

FLUSH PRIVILEGES

(3) After pressing Enter, enter the command

SET PASSWORD FOR'root'@'localhost' = PASSWORD('your new password');

(4) OK, that's it, the new password is set successfully! 

Others reference???
1.homebrew-core/Formula/mysql.rb:
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mysql.rb
2.homebrew-core/Formula/mysql@5.7.rb:
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mysql@5.7.rb
*/

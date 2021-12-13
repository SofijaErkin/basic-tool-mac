# Problem:How to install Redis x.x.x on Mac OS 
# RoadMap: Redis manually(mac)
=begin

You know, 

0.Please enter the redis installation directory

cd /usr/local/

1.download redis;

host website: https://redis.io/download

download website: https://download.redis.io/releases/

just use this command:

sudo curl -O http://download.redis.io/releases/redis-3.2.8.tar.gz

if you want to download redis-x.y.z, use that command:

sudo curl -O http://download.redis.io/releases/redis-x.y.z.tar.gz

2.Unzip

sudo tar -zxvf redis-x.y.z.tar.gz

3.Grant permissions

Make sure that the current user has read and write permissions for the 

decompressed directory: 

sudo chown marryme redis-3.2.8

4.Create soft link

After decompression, you will get the redis-3.2.8 folder. The name is a bit long 

and can be renamed. The better way is to create a soft link instead of renaming, 

which will also facilitate the redis upgrade later:

sudo ln -s redis-3.2.8 redis

The above marryme is the user on my computer, you need to modify it according 

to your current user name.

3.Grant soft link permissions

sudo chown -R marryme redis

4.Compile

cd redis
sudo make

5.Compile and install

sudo make install

6.Create executable file directory

sudo mkdir -p /usr/local/redis/bin

7.Grant executable file permissions

sudo chown marryme /usr/local/redis/bin

8.Migrate executable files

Redis will put some executable files under the /redis/src directory, and move 

all the executable files under the /redis/src/ directory to /redis/bin/:

sudo cp -r /usr/local/redis/src/mkreleasehdr.sh /usr/local/redis/bin/mkreleasehdr.sh

sudo cp -r /usr/local/redis/src/redis-benchmark /usr/local/redis/bin/redis-benchmark

sudo cp -r /usr/local/redis/src/redis-check-aof /usr/local/redis/bin/redis-check-aof

sudo cp -r /usr/local/redis/src/redis-check-rdb /usr/local/redis/bin/redis-check-rdb

sudo cp -r /usr/local/redis/src/redis-cli /usr/local/redis/bin/redis-cli

sudo cp -r /usr/local/redis/src/redis-sentinel /usr/local/redis/bin/redis-sentinel

sudo cp -r /usr/local/redis/src/redis-server /usr/local/redis/bin/redis-server

sudo cp -r /usr/local/redis/src/redis-trib.rb /usr/local/redis/bin/redis-trib.rb

9.Configuration file

It is not recommended to place any product configuration files under the 

current product. Copy redis.conf to /usr/local/redis/etc:

sudo cp /usr/local/redis/redis.conf /usr/local/redis/etc

Edit redis.conf

cd /usr/local/etc/

vim redis.conf

Pay attention to the common commands of vim:

1) Press the letter key "i" to edit mode;

2) Press the return key "esc" + input the letter ":wq": save and exit;

Modify redis.conf with reference to the following content:

#Change to guard mode

daemonize=yes

#Set process lock file

pidfile /usr/local/redis/redis.pid

#port

port 6379

#client timeout

timeout 300

#Log Level

loglevel debug

#Log file location

logfile /usr/local/var/log/redis/redis.log

#Set the number of databases. The default database is 0. Ability to use 
#the SELECT <dbid> command to specify the database id on the connection

databases 8

##Specify how many update operations within how long and how many times 
#the data will be synchronized to the data file. Able to cooperate with 
#multiple conditions

#save <seconds> <changes>

#RedisDefault configuration file provides three conditions:

save 900 1

save 300 10

save 60 10000

#Specify whether to compress data when storing to the local database, 
#silently think yes. Redis uses LZF compression, assuming that to 
#save CPU time.

# Able close the# option, but it will cause the database file to become 
# huge

rdbcompression yes

#Specify the name of the local database file

dbfilename dump.rdb

#Specify the local database path

dir /data/db/

#Specify whether to log after each update operation. Redis writes data to 

# disk asynchronously by default. Assuming it’s not turned on, maybe

# Will cause data loss for a period of time when the power is off. Since 

# redis itself synchronizes data files according to the above save 

# conditions to synchronize, so there are

#The data will only exist in memory for a period of time

appendonly no

#Specify the update log conditions, which have 3 optional values in common:

#no: Means to wait for the operating system to synchronize the data cache 

#to the disk (fast)

#always: Indicates that fsync() is manually called to write data to disk 

#after each update operation (slow, safe)

#everysec: Means to synchronize once per second (compromise. Default value)

appendfsync everysec

10.Data directory and log directory

According to the configuration of the configuration file, create a data 

directory and a log directory：

sudo mkdir -p /usr/local/var/log/redis

sudo mkdir -p /data/db

Ensure that the current user has read and write permissions for the above 

two directories:

sudo chown marryme /usr/local/var/log/redis

sudo chown marryme /data/db

11.Configure global variables

After the installation and configuration is complete, we can add the redis 

binary command file directory (installation directory/bin) to the PATH path:

If your system's default terminal is generally bash:

(1) Enter the terminal

(2）vim ~/.bash_profile

Edit redis path: export PATH=/usr/local/redis/bin:$PATH, then save

(3) source ~/.bash_profile //Save to make the configuration effective

Using zsh:

(1) Enter the terminal

(2）vim ~/.zshrc

Edit redis path: export PATH=/usr/local/redis/bin:$PATH, then save

(3) source ~/.zshrc //Save to make the configuration effective

12.Start the server

Start the redis server for the first time, Or start the server every 

time the configuration file is modified

sudo /usr/local/redis/bin/redis-server /usr/local/etc/redis.conf


After initializing the configuration file for the first time and 

starting the server, the Redis server is usually started like this：

redis-server

or 

sudo redis-server

13. redis client

Open the redis client:

redis-cli

or 

sudo redis-cli

or 

cd /usr/local/redis/bin

./redis-cli

Exit the redis client command line:

exit

Close the redis server in the redis client：

redis-cli

shutdown

or 

sudo redis-cli

shutdown

or 

cd /usr/local/redis

./bin/redis-cil shutdown

14.close the reids server

(1)Forcibly close the server:

sudo -i

ps -ef | grep -i redis

kill -9 PID

(2)Use ctrl+c in the window where the startup command is executed

(3)Close the redis server in the redis client

15.set password

Redis does not provide a password by default, and access control can be turned 

on by modifying the configuration file. Edit redis.conf to start authentication.

(1)Change setting

vim /usr/local/etc/redis/conf

(2)Find the following:

#requirepass foobared

requirepass 123456

(3)Modify foobared, or copy a line, modify foobared to what you want, such as 

123456, and save it.Restart the service. The password has been set successfully. 

When connecting, you can log in by entering the password you modified.

Pay special attention, after modifying the configuration file, use this to 

start the redis server:

/usr/local/redis/bin/redis-server /usr/local/etc/redis.conf

or

sudo /usr/local/redis/bin/redis-server /usr/local/etc/redis.conf




Login to verify whether the password is set successfully:

(1) Start the redis server

redis-server

or

sudo redis-server

(2) Start the redis client

redis-cli

(3) Enter "config get requirepass" to verify

(4) "(error) NOAUTH Authentication required." appears to verify that 

the password is set successfully!

(5) Enter the password:

auth 123456 // get ok

(6) Enter "config get requirepass" again to verify, you can see the 

password you set, 123456 is the password

1) "requirepass"

2) "123456"


16.Install graphical interface

Install the mac client: redis-desktop-manager

Official website download address (release version): https://redisdesktop.com


The Redis version suitable for macOS 1x.x ranges from 3.2.x to 4.0.x, or even the lastest version.

Other reference:
1.homebrew-core/Formula/redis.rb
("Persistent key-value database, with built-in net interface")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/redis.rb

2.homebrew-core/Formula/redis@3.2.rb :
("Persistent key-value database, with built-in net interface")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/redis@3.2.rb

3.homebrew-core/Formula/redis@4.0.rb:
("Persistent key-value database, with built-in net interface")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/redis@4.0.rb

4.homebrew-core/Formula/redis@4.0.rb:
("Persistent key-value database, with built-in net interface")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/redis@4.0.rb

5.homebrew-core/Formula/redis-leveldb.rb:
("Redis-protocol compatible frontend to leveldb")

6.homebrew-core/Formula/hiredis.rb
("Minimalistic client for Redis")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/hiredis.rb

=end

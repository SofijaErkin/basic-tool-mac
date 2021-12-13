// This is a roadmap for downloading MongoDB on macOS.
// RoadMap: MongoDB manually(mac).
/*
You know, 

1.download mongodb;

MongoDB provides a 64-bit installation package on the OSX platform, you can 

download the installation package on the official website.

home website: https://www.mongodb.com/try/download/community

It is not recommended to download the latest version, whether you are a 

student or an industrial industry.


(1)Enter the /usr/local download directory

cd /usr/local

(2)Download

just use this command to download mongodb-4.2.2:

sudo curl -O https://fastdl.mongodb.org/osx/mongodb-macos-x86_64-4.2.2.tgz

if you want to download mongodb-x.y.z, just use this command:

sudo curl -O https://fastdl.mongodb.org/osx/mongodb-macos-x86_64-x.y.z.tgz

But mongodb-x.y.z must exist, please refer here:

https://docs.mongodb.com/upcoming/release-notes/5.0/

(3)Unzip

sudo tar -zxvf mongodb-macos-x86_64-4.2.2.tgz

(4)Ensure permissions

Next, make sure that the current user has read and write permissions for 

the decompressed directory:

sudo chown marryme mongodb-macos-x86_64-4.2.2

The above marryme is the user on my computer, you need to modify it 

according to your current user name.

(5)Create a soft link

After decompression, you will get the mongodb-macos-x86_64-4.2.2 folder. 

The name is a bit long and can be renamed; a better way is to create a soft link 

instead of renaming, which will also facilitate the subsequent upgrade of MongoDB.

sudo ln -s mongodb-macos-x86_64-4.2.2 mongodb

(6)Ensure soft link permissions(Optional)

sudo chown -R marryme mongodb

2.$PATH

Now we need to configure global variables for mongodb, that is, add the MongoDB 

binary command file directory (installation directory/bin) to the PATH path.

If your system's default terminal is generally bash,then

(1) Enter the terminal

(2) vim ~/.bash_profile

Edit the mongo path: export PATH=/usr/local/mongodb/bin:$PATH, then save

(3) source ~/.bash_profile //Save to make the configuration effective


Or if you are using zsh, then

(1) Enter the terminal

(2) vim ~/.zshrc

Edit the mongo path: export PATH=/usr/local/mongodb/bin:$PATH, then save

(3) source ~/.zshrc //Save to make the configuration effective

3.CONF

Now we need to create the configuration file. Because I am using the decompressed 

version, there is no configuration file by default.

Similarly, I do not recommend placing the product configuration file in the 

product directory.

cd /usr/local/etc/

vim mongod.conf

Then write:

systemLog: 

    destination:file 
    
    path: "/usr/local/var/log/mongodb/mongod.log" 
    
    logAppend: true 
    
storage: 

    journal: 
    
      enables: true 
      
    dbPath: "/data/db" 
    
net: 

    bindIP: 127.0.0.1
    
    port: 27017
 
You can refer to:

https://docs.mongodb.com/manual/reference/configuration-options/#file-format

This configuration file is best not to be saved in the installation directory 

of MongoDB, because it is not conducive to future version upgrades.

4.log and data path

Create it according to the path just written in the configuration file. And 

to give the current user read and write permissions to the above two directories.

Data storage path:

sudo mkdir -p /usr/local/var/mongodb

Log file path:

sudo mkdir -p /data/db


Of course, the next step is to ensure that the current user has read and write 

permissions for the above two directories:

sudo chown marryme /usr/local/var/mongodb

sudo chown marryme /data/db



5.mongodb server

We can query the README file in the MongoDB installation directory and see 

this sentence:

COMPONENTS

   mongod - The database server.
   mongos - Sharding router.
   mongo  - The database shell (uses interactive javascript).

After executing the following commands, it is used to start the mongodb server 

for the first time or start the mongodb server after modifying the mongodb 

configuration file.

mongod --config /usr/local/etc/mongod.conf

or

sudo mongod --config /usr/local/etc/mongod.conf

Start the mongodb server for the first time or modify the configuration file to 

start the mongodb server, you can also use the following to start the mongodb 

server.

mongod

or

sudo mongod

Verify that MongoDB has started successfully by checking the process output for 

the following line:

[initandlisten] waiting for connections on port 27017

The output should be visible in the terminal or shell window.

You may see non-critical warnings in the process output. As long as you see the 

log line shown above, you can safely ignore these warnings during your initial 

evaluation of MongoDB.

At this time, open the browser, enter localhost:27017, a screen will appear, 

then it’s ok


6.mongodb client

The mongodb server will occupy the current command line. Whether you are viewing 

the log or starting the mongodb client, you have to reopen a terminal.

That is, after the mongodb server is started, we can use the mongo command to 

open a terminal.

mongodb client start:

cd /usr/local/mongodb/bin 

./mongo

or 

mongo

or 

sudo mongo


7.root password

Configure the user name, password and access permissions for mongodb.

Log in before giving access permissions, of course in the mongodb client.

use admin

db.createUser({
          user: "root",
          pass: "root-pass",
          roles: [{role:"root",db:"admin"}]
          }
          )


Reopen a terminal and add in the configuration file

vim /usr/local/etc/mongod.conf

#Configuration file enable mandatory verification

  security: 
    authorization: "enabled"
    

Verify again after restarting mongodb

mongod

mongo

db.auth("root", "root-pass")

8. shut down

The mongodb server must be shut down in time.

The mongodb server must be shut down in time.

The mongodb server must be shut down in time.

Say something very important three times.

When you want to exit, pay attention to exit with the correct posture, 

otherwise there may be some problems when you connect again next time.

Please use in mongodb client:

use admin

db.shutdownServer()

That is to close, you can enter the mongo shell console to achieve.

db.adminCommand({ "shutdown" : 1 })

If you did not log out of the mongodb server in time, then forcefully 

shut it down like this.

First find the process of MongoDB:

ps aux | grep mongodb

Then execute:

kill -15 pid

or 

kill -9 pid

After exiting the mongodb server, refresh http://localhost:27017/ 

or http://127.0.0.1:27017/ at this time. You will find that you 

cannot access this website.

9.Studio 3T

Install the visualization tool Studio 3T of mongodb. The download 

link of the visualization tool is:

https://studio3t.com/download/?utm_source=intellishell&utm_medium=welcomepage&utm_campaign=inapp-robo3t

The MongoDB version suitable for macOS 1x.x ranges from 4.0.x to 6.x.x, or even the lastest version.

Others reference：
1.homebrew-core/Formula/mongocli.rb:
( "MongoDB CLI enables you to manage your MongoDB in the Cloud")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mongocli.rb

2.homebrew-core/Formula/mongosh.rb:
("MongoDB Shell to connect, configure, query, and work with your MongoDB database")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mongosh.rb

3.homebrew-core/Formula/mongo-cxx-driver.rb:( "C++ driver for MongoDB")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mongo-cxx-driver.rb

4.homebrew-core/Formula/mongo-c-driver.rb:("C driver for MongoDB")
https://github.com/Homebrew/homebrew-core/blob/master/Formula/mongo-c-driver.rb

*/

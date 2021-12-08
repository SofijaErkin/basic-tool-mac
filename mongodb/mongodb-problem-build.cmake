# # Problem: MongoDB: exception in initAndListen: 
# # 20 Attempted to create a lock file on a read-only directory: /data/db, terminating?
# # stackoverflow:
# # https://stackoverflow.com/questions/42446931/mongodb-exception-in-initandlisten-20-attempted-to-create-a-lock-file-on-a-rea/70231134#70231134
# [[
wrong reason:

There is no operation permission for the folder `/data/db`, 

currently this folder only has read-only permission.

Solution:

1.Modify permissions: ensure that the current user has read and write permissions to `/data/db` folder

    sudo chown -r your-user-name /data/db

2.Create a database path elsewhere and change the MongoDB database path
for example:

I actually planned to put the database path in a place where I can see it at all times.

I used the second method directly

#First create a database storage directory,

I built it in `~/Documents/mongodb/data`

#When running in the future, enter the following command to ok

    mongod --dbpath ~/Documents/mongodb/data

in addition,
The following problems may occur when you configure global variables in MongoDB:

for example:

1.The default terminal of the system is generally `bash`, but I use `zsh`

Then what we have to do is clear:

We need to permanently set system environment variables in `zsh`.

 When `zsh` starts, it will first read the configuration file `~/.zshrc`, 

so we can put the configuration information of environment variables in this configuration file

    vi ~/.zshrc

    Add export PATH=/usr/local/mongodb/bin:$PATH

2.The default database storage address of mongodb is `/data/db`,

which requires us to manually create `sudo mkdir -p /data/db`

Then we start the service (start the server)

    mongod

If you can see the prompt [Waiting for connection 27017], 

your database service has actually been started 

(although there are some non-critical warnings)

or

Displaying the interface waiting for the client to connect means that the startup is successful. 

If it is unsuccessful, check the location of the `/data/db` folder. 

If it doesn’t work, delete it and create a new one. 

Open the browser, enter `localhost:27017` or `127.0.0.1:27017`, 

and a line like this will appear Word.

    It looks like you are trying to access MongoDB over HTTP on the native driver port.

3.Enter MongoDB command operation

Reopen the command line and enter 

    mongo

The database can be operated, and now we can perform database-related operations, such as executing

    show dbs


When you want to stop MongoDB, you must exit correctly, 

otherwise, there will be problems connecting to the database next time. 

Use the following two lines of code to complete this operation.

    use admin;
    db.shutdownServer();

4.Finally, 

the visualization tool RoboMongo

You can choose the version that suits you to download.

Others,

If you are a Mac user, you will download the MongoDB's TGZ compressed file, 

decompressed, put the decompressed file in `/usr/local`, 

by default, in the Finder, you can't see `/usr` this directory (terminals are used Please be skilled), 

you can see this hidden directory after you can use the `Shift + Command + G` input `/usr/local`.

What's more, What to do if the connection to MongoDB fails?

Mainly due to the abnormal shutdown last time, the lock file was generated, just delete the lock file.

    sudo rm /data/db/mongod.lock

What if the execution of the `sudo mongod` command has been stuck?

In fact, it is not stuck, but started. 

This window cannot be closed. 

If you open a new window, you will find that you can execute the `sudo mongo` command.

How to avoid this problem？

Note: When you want to stop MongoDB, you must exit correctly,

otherwise there will be problems connecting to the database next time. 

Use the following two lines of code to complete this operation. 
Again:

    use admin;
    db.shutdownServer();
If you don't download MongoDB, and if use mac, just open the terminal,
use the command to into dir:`cd /usr/local`, 
and use the command to download via your hands:

    sudo curl -O https://fastdl.mongodb.org/osx/mongodb-macos-x86_64-4.X.X.tgz

notices:4.X.X, the version of the MongoDB.

What's more, if you download stuiod3t-2019030.dmg for macOS,

Crack that:

1. Install the dmg file;

2. Open the file after installation;

3. Install the directory as shown in the figure, and drag the downloaded `data-man-mongodb-ent-2019.3.0.jar` into and overwrite the original one;

4. Final execution

    sudo spctl --master-disable

Finished~.

(stuiod3t-2019030.dmg for macOS Cracking: https://blog.csdn.net/m0_49337600/article/details/111415870)


]]

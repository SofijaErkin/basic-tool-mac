// This is a roadmap for downloading MongoDB on macOS.
/*
You know, 
1.download mongodb;

2.sudo ln -s;

3.$Path;

4.vim /usr/local/mongod.conf;

5.sudo mkdir -p /data/db;

6.sudo mkdir -p /usr/local/var/log/mongodb;

7.sudo chown -R /data/db;

8.sudo chown -R /usr/local/var/log/mongodb;

9. ./mongod ./etc/mongodb/conf;

10.mongod;

11.mongo;

12.use admin;

13.db.createUser({user: "root",pwd: "password", roles: [ { role: "root", db: "admin" } ]})

14.db.shutdownServer();

15. user-root user-pass

16.VS code or others Desktop, eg:mongo studio3T.

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

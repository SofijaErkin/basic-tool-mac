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
*/

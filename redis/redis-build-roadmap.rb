# Problem:How to install Redis x.x.x on Mac OS 
# RoadMap:
=begin
You know, 
1.download redis;

2.ln -s;

3.sudo make;

4.sudo install;

5.sudo mkdir -p /usr/local/redis/bin;

6.sudo cp -r /usr/local/redis/src/... /usr/local/redis/bin/...;

7.sudo cp -r /usr/local/redis/redis/conf /usr/local/etc/redis/conf;

8.sudo mkdir -p /usr/local/var/log/redis;

9.$Path;

10.vim ./redis.conf;

11. ./redis-server ./etc/redis/conf;

12. redis-server;

13. redis-cli;

14.shutdown;

15. vim ./redis.conf for requipentpass changing;

16.VS code or others Desktop.

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

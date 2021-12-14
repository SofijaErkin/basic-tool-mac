# Problem:How to build Nginx x.x.x on Mac OS 
# RoadMap: Install nginx manually(Nginx manually(mac))
=begin
Why download Nginx manually?

My mac system is too low! My Xcode software version is too low! My homebrew 
does not support downloading Nginx (because homebrew requires me to upgrade 
the computer system and Xcode software version, but I don’t want it, I just
don’t)!

I am not satisfied with the Nginx version downloaded by home brew! I want 
to use the version of Nginx I want!
Do it yourself, I have enough food and clothing.I am my own God, my own 
life, I save myself. Of course, thank my parents, and my grandparents.

Now, I'm not talking nonsense. Dreaming about mountains: 
1.download the Nginx\Zlib\Pcre/Openssl that you need and match your 
computer system (I do not recommend downloading the latest one, whether 
it is for learning, developing or testing)
Open the terminal and enter the /usr/local directory, just use that 
command:
cd /usr/local/
1.1 Nginx(I do recommend the Legacy versions)
home website:http://nginx.org/en/download.html

Nginx Legacy versions from 1.6.3 to 1.16.1, 
1.1.1 just use this command to download nginx-1.12.2
(I recommend, I am using,less than 3 seconds):
sudo curl -O http://nginx.org/download/nginx-1.12.2.tar.gz

1.1.2 or use this command to download nginx-1.18.0(about 4 seconds):
sudo curl -O http://nginx.org/download/nginx-1.18.0.tar.gz

Have you found the pattern? For example, if you want to download 
nginx-x.yz.s, just use the following command (recommended to download the 
historical stable version):
sudo curl -O http://nginx.org/download/nginx-x.yz.s.tar.gz 

1.2 Zlib(Not required, but I recommend)
It is mentioned in the Nginx reference document that zlib version 
1.1.3 or higher is required.
(This selects the latest version 1.2.11 on the homepage of the 
official website.)
home website:https://zlib.net/
just use this command to download zlib-1.2.11(2 seconds):
sudo curl -O https://zlib.net/zlib-1.2.11.tar.gz

1.3 Pcre(Required)
That version are frm 4.4 to 10.39.At first, I downloaded a 10.x version on 
the old computer, and the compilation failed. Maybe the 8.x and 10.x 
interfaces are not compatible, and nginx depends on 8.x.
(It is mentioned in the Nginx reference document that pcre version 4.4 or 
higher is required)
home website:http://www.pcre.org/
version 8.x download website:https://sourceforge.net/projects/pcre/files/pcre/

1.3.1 just use this command to download Pcre-8.44(6 seconds):
sudo curl -O https://sourceforge.net/projects/pcre/files/pcre/8.44/pcre-8.44.tar.gz

1.3.2 or(I recommend, I am using), use this command to download Pcre-8.41(2 seconds):
sudo curl -O https://sourceforge.net/projects/pcre/files/pcre/8.41/pcre-8.41.tar.gz

1.4 Openssl(Homebrew Required, but someone successfuly even without openssl)
But I recommend.
(Go to the latest stable version 1.1.0 on the download page of the official 
website)
home website:https://www.openssl.org/source/
1.4.1 just use this command to download Openssl-1.1.1h(6 seconds):
sudo curl -O https://www.openssl.org/source/openssl-1.1.1h.tar.gz

1.4.2 or use this command to download Openssl-1.1.0(11 seconds):
sudo curl -O https://www.openssl.org/source/openssl-1.1.0.tar.gz

2. create a new directory /usr/local/nginx-install to install Nginx, 
because there will have two same files during "make install" if i install 
Nginx on the below directory /usr/local/nginx-1.12.2/.
2.1 just use this command to create a new directory /usr/local/nginx-install:
sudo mkdir -p /usr/local/nginx-install

and ensure that the current user has read and write permissions to the above 
directory using this command:
sudo chown marryme /usr/local/nginx-install
(The above "marryme" is for the user on my computer, you need to modify it 
according to your current user name)

2.2 move the downloaded four compressed packages to this directory 
/usr/local/nginx-install using this command:
sudo mv /usr/local/nginx-1.12.2.tar.gz /usr/local/nginx-install/nginx-1.12.2.tar.gz
sudo mv /usr/local/zlib-1.2.11.tar.gz /usr/local/nginx-install/zlib-1.2.11.tar.gz
sudo mv /usr/local/pcre-8.41.tar.gz /usr/local/nginx-install/pcre-8.41.tar.gz
sudo mv /usr/local/openssl-1.1.1h.tar.gz /usr/local/nginx-install/openssl-1.1.1h.tar.gz

2.3 Unzip the four compressed packages in this directory 
/usr/local/nginx-install using this command:
sudo tar -zxvf nginx-1.12.2.tar.gz
sudo tar -zxvf zlib-1.2.11.tar.gz
sudo tar -zxvf pcre-8.41.tar.gz
sudo tar -zxvf openssl-1.1.1h.tar.gz
if using "pwd && ls -1" on the directory /usr/local/nginx-install,you will 
get:
/usr/local/nginx-install
nginx-1.12.2
nginx-1.12.2.tar.gz
openssl-1.1.1h
openssl-1.1.1h.tar.gz
pcre-8.41
pcre-8.41.tar.gz
zlib-1.2.11
zlib-1.2.11.tar.gz

2.4 enter the nginx-1.12.2 directory to configure, compile, compile and install
2.4.1 enter the nginx-1.12.2 directory using this command:
cd nginx-1.12.2
2.4.2 just use this command to configure Nginx:
2.4.2.1 (I recommend)
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-zlib=../zlib-1.2.11 \
--with-openssl=../openssl-1.1.1h

2.4.2.2 or if don't download zlib-1.2.11, using this command to configure Nginx:
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-openssl=../openssl-1.1.1h

2.4.2.3 Or if you want to chang some data installing directory,
eg: store nginx.conf in /usr/local/etc/nginx-conf/nginx.conf, 
store the error-log in /usr/local/var/log/nginx-logs/error.log,
store the http-log in /usr/local/var/log/nginx-logs/access.log,
store the pid of Nginx in /usr/local/nginx-1.12.2/nginx-pid/nginx.pid,
store the lock of Nginx in /data/db/nginx-lock/nginx.lock,
you could use this command to configure Nginx:
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--conf-path=/usr/local/etc/nginx-conf/nginx.conf \
--error-log-path=/usr/local/var/log/nginx-logs/error.log \
--http-log-path=/usr/local/var/log/nginx-logs/access.log \
--pid-path=/usr/local/nginx-1.12.2/nginx-pid/nginx.pid  \
--lock-path=/data/db/nginx-lock/nginx.lock \
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-zlib=../zlib-1.2.11 \
--with-openssl=../openssl-1.1.1h

reference:
--prefix=PATH: Specify the installation directory of nginx. Default 
/usr/local/nginx;
--conf-path=PATH: Set the path of the nginx.conf configuration file. Nginx 
allows to use different configuration files to start, through the -c option 
in the command line. The default is prefix/conf/nginx.conf;
--with-pcre: Set the source path of the PCRE library. If it has been 
installed via yum, use --with-pcre to automatically find the library file. 
When using --with-pcre=PATH, you need to download the source code of the 
pcre library (version 4.4-8.30) from the PCRE website and unzip it, and 
leave the rest to Nginx's ./configure and make to complete. Perl regular 
expressions are used in the location directive and the 
ngx_http_rewrite_module module.
--with-zlib=PATH: Specify the source decompression directory of zlib 
(version 1.1.3-1.2.5). The network transmission compression module 
ngx_http_gzip_module, which is enabled by default, requires zlib.
--with-http_ssl_module: Use https protocol module. By default, this module 
is not built. The premise is that openssl and openssl-devel have been i
nstalled.

2.4.3 compile using this command(about A minute or two, need to wait):
sudo make
2.4.4 Compile and install using this command(5 seconds):
sudo make install

2.5 return to the upper-level catalog and establish a soft connection to 
facilitate later version upgrades. just use this command:
cd .. && cd ..
sudo ln -s nginx-1.12.2 nginx
sudo chown marryme nginx
sudo chown marryme nginx-1.12.2
sudo rm -rf nginx-install

2.6 manually add Nginx to environment variables

Pay attention to the common commands of vim or bash:

1) Press the letter key "i" to edit mode;

2) Press the return key "esc" + input the letter ":wq": save and exit;

2.6.1 if the default terminal of your system is generally bash, just use this
command:
vi ~/.bash_profile
Edit and add nginx path: export PATH=/usr/local/nginx/sbin:$PATH, then save.
Also, save to make the configuration effective using this command:
source ~/.bash_profile 

2.6.2 if You are using zsh， use this command:
vi ~/.zshrc
also, edit and add nginx path, then save. Using this command:
export PATH=/usr/local/nginx/sbin:$PATH
Finnally, save to make the configuration effective using this command:
source ~/.zshrc

2.7 （Optional）
Adjust the listening port of the nginx server from 80 to 8080
2.7.1 if you just use this command to configure Nginx:
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-zlib=../zlib-1.2.11 \
--with-openssl=../openssl-1.1.1h
then, your Nginx conf was in this directory /usr/local/nginx/conf/nginx.conf.
Also, modify the configuration file nginx.conf of n g i n x to change the 
listening port of the server from 80 to 8080. Just use this command:
sudo vim  /usr/local/nginx/conf/nginx.conf

reference: Use the letter key "i" to insert editing, use the "esc" key to 
exit the editing mode, and gradually type ":wq" to save and exit.

And, Find "server" in the configuration file nginx.conf, and change 
the "listen" of "server" from "80" to "8080".

2.7.2 if you just use this command to configure Nginx:
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--conf-path=/usr/local/etc/nginx-conf/nginx.conf \
--error-log-path=/usr/local/var/log/nginx-logs/error.log \
--http-log-path=/usr/local/var/log/nginx-logs/access.log \
--pid-path=/usr/local/nginx-1.12.2/nginx-pid/nginx.pid  \
--lock-path=/data/db/nginx-lock/nginx.lock \
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-zlib=../zlib-1.2.11 \
--with-openssl=../openssl-1.1.1h
then, your Nginx conf was in this directory /usr/local/etc/nginx-conf/nginx.conf.
and, modify the configuration file nginx.conf of n g i n x to change the 
listening port of the server from 80 to 8080. Just use this command:
sudo vim /usr/local/etc/nginx-conf/nginx.conf

2.8 Start nginx server
2.8.1 if you just use this command to configure Nginx:
./configure --prefix=/usr/local/nginx-1.12.2 \ 
--with-http_ssl_module \ 
--with-pcre=../pcre-8.41 \
--with-zlib=../zlib-1.2.11 \
--with-openssl=../openssl-1.1.1h

2.8.1.1 then just use this command:
(Start the nginx server for the first time or modify the nginx configuration 
file and load the test to start)
sudo /usr/local/nginx/sbin/nginx -t -c /usr/local/nginx/conf/nginx.conf
"-t" option: Use the configuration file to test
"-c" option: start with the specified configuration file

And use this command to end nginx server:
sudo rm -rf /usr/local/var/run/nginx/nginx.pid
 
2.8.1.2 or use this command:
sudo /usr/local/nignx/sbin/nginx
or
sudo nginx

Also, use this command to end:
sudo nginx -s stop
or
sudo nginx -s quit

2.9 Use the browser as the nginx client to connect to the nginx server. 
Type "127.0.0.1:80/" or "127.0.0.1:8080/"(if you modify the listening port)
directly in the browser URL bar.

The Nginx version suitable for macOS 1x.x.x ranges from 1.11.13 to 1.21.4(the lastest version).

Notices:
I do recommand you store nginx.conf out of the directroy /usr/local/nginx.

Others reference：https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/nginx.rb
=end

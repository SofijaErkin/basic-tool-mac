# Manually C++ Back-end Development On Mac

I'm a new hire that the company has recently given me a job, and I've got a

work notebook Mac, I need to code Linux server using C++ on Mac. I wonder if

is there any tips to do that?

## 1.First Supposition

I used to run Fedora on Mac using Parallels Desktop 11, and I heard that Docker

support Container carrying Linux on Mac, and I know that I could use Web Services

to run C++ code under Linux, as Amazon Elastic Compute Cloud(EC2: Cloud Server)

do, also, I could buy an external Raspberry Pi to run the need C++ Code at a

lower price and better solution.

So, that's clear.

Kill Linux C++ Back-end on Mac

1.Physical Linux Notebook(dual boot Linux and macOS)

Dual boot building harmful.

2.Virtual Machine(running Linux. connect via SSH and SFTP)

e.g: [Vagrant](https://qr.ae/pvKYln)+ VirtualBox.

This is the simplest route, but is effectively just building in Linux.

3.Docker(Linux based containers running on MacOS, via SSH and SFTP)

The docker image, this could end up being difficult to run/debug your

application and have the MacOS IDE understand error messages. Also use vagrant

instead of docker.

4.Cloud Host(remote Linux. connect via SSH and SFTP)

Well idea.

5.[Raspberry Pi](<https://www.raspberrypi.com/products/raspberry-pi-4-model-b/)(a> proper Linux computer. could as remote Linux. connect via SSH and SFTP)

Nice!

6.Cross GCC on MacOS

Do Not recommend!

## 2.Reading Plan

I'm ready to checkout the Journal, Blog, Stack Overflow, or Others.

Reading notes:

1.[Setting up a Simple Docker Dev Environment](https://www.ctl.io/developers/blog/post/setting-up-a-simple-docker-dev-environment)

    <about using 3.Docker>

    Docker has two modules. The one is the static way, dependencies and testing,

    or just as App release version; the another is dynamic way, application

    under active development using "rsync", just as App debug version.

2.[A productive development environment with Docker on OS X](https://www.ybrikman.com/writing/2015/05/19/docker-osx-dev/)

    <about using 3.Docker>

    Edit Code at Mac, compile and test at LXC via Docker, sync the mac directory

    to the virtual machine Docker. Mount my folder into my Docker via "rsync".

3.[Running Docker on AWS from the ground up](https://www.ybrikman.com/writing/2015/11/11/running-docker-aws-ground-up/)

    <about using 4.Cloud Host>

    Compute, ship and post your App using using Elastic Compute Cloud(EC2) via 
    
    Amazon Web Services. Multiple environment using Docker in EC2 Container 

    Services(ECS).

4.[Infrastructure as code: running microservices on AWS using Docker, Terraform, and ECS](https://www.ybrikman.com/writing/2016/03/31/infrastructure-as-code-microservices-aws-docker-terraform-ecs/)

    <about using 4.Cloud Host>

    Auto build, ship and post platform via Docker, ECS and Terraform. That's

    fancy and powerful. I could use that auto-idea on my Mac Docker for build,
    
    ship or post.

5.[Can you use a Mac OS to develop a C/C++ application that runs on a Linux server?](https://www.quora.com/Can-you-use-a-Mac-OS-to-develop-a-C-C++-application-that-runs-on-a-Linux-server)

    <about using 5.Raspberry Pi>

    Using Raspberry Pi as external Linux computer, I could compile and test on 
    
    it. Hook it into my network so I could just remote logo into it - and arrange

    for it to share it's filing system with my Mac. At that time, I could sit 

    in front of my Mac, use my Notebook Mac's editors and others stuff - and just 

    have a shell window opened with an "ssh"session onto that Raspberry Pi.

    If I install "apache" on that Raspberry Pi - so it'll not only like a Linux

    server - it'll actually BE a Linux server. Also, I could probably even do 

    full-up testing on it.

    As Steve Baker said, for the sake of a few bucks and a day to get it set 

    up - I'll save myself a ton of grief. 

6.[Why can't I compile a C++ program on my Mac and run it on a Ubuntu server?](https://www.quora.com/Why-cant-I-compile-a-C++-program-on-my-Mac-and-run-it-on-a-Ubuntu-server?sort=upvote)

    <about 2.Virtual Machine(running Linux)>

    MacOS(Xcode/Command Line Tools) use clang-llvm with support C++14+.

7.[Cross GCC on MacOSX](http://crossgcc.rts-software.org/doku.php?id=start)

    <about 6.Cross GCC on MacOS>

    Compiling for Linux on MacOS X, This is a cross compilation of GCC:

    https://gcc.gnu.org/news.html. You can find here the releases of cross

    compilers for Linux 32 and Linux 64.

8.[Development environment setup for Mac and CentOS using Docker](https://stackoverflow.com/questions/28753196/development-environment-setup-for-mac-and-centos-using-docker)

    <about using 3.Docker>

    It's a really good idea to use Docker to standardise the development
    
    configuration (softwares, custom packages, env variables, ...).

9.[How to quit Docker for Mac and build a Docker development environment with Ubuntu + Vagrant](https://linuxtut.com/en/a3a2de99be68d5e04fb5/)

    <about 2.Virtual Machine(running Linux)>

    On Linux, the VFS is shared between the host and the container, so the 
    
    reflection without overhead is guaranteed. 

    However, on macOS (and other non-Linux platforms), there is significant 
    
    overhead for full consistency ... 

10.[Shipping C++ Programs in Docker: A Journey Begins](https://medium.com/@mfcollins3/shipping-c-programs-in-docker-1d79568f6f52)

    <about using 3.Docker>

    Deploying C++ applications using Docker and Kubernetes. 

    The idea with multi-stage builds is that I can build the application in one
    
    Docker container, and then copy only the production files to a second 
    
    Docker container. 

    The second Docker container can then be deployed and released to customers
    
    without giving customers access to your source code.

    Customers can run and connect to the container using Bash, but can only see 
    
    the configuration files and application binaries.

11.[How to cross compile from Mac OS X to Linux x86?](https://stackoverflow.com/a/54083254/10846570)

    <about using 3.Docker>

    "backup your container as base build image docker commit [id] centos:build"

    Because if you turn down Docker, the container will miss, until you use last 
    
    time with manually rebuild. Also, that could automate building images.

12.[How to cross compile from Mac OS X to Linux x86?](https://stackoverflow.com/a/1778024/10846570)

    <about 6.Cross GCC on MacOS>

    Your simplest solution is to just run CentOS 5.3 in a VM (e.g. Sun VirtualBox).
     
    This requires minimal setup, has quite reasonable overhead (assuming an Intel
    
    Mac), and you'll be able to actually test and debug what you are building.

    If you really insist on cross-compiling, you must build a cross-compiler. 
    
    Instructions are here and here, but beware: it will likely take you several
    
    days to get it right, and then you'll still need a VM to test the result, so 
    
    I don't see any point in doing it that way.

13.[Docker Explained: Using Dockerfiles to Automate Building of Images](https://www.digitalocean.com/community/tutorials/docker-explained-using-dockerfiles-to-automate-building-of-images)

    <about using 3.Docker>

    In this DigitalOcean article, we will see about automating this process as 
    
    much as possible, as well as demonstrate the best practices and methods to 
    
    make most of Docker and containers via Dockerfiles: scripts to build 
    
    containers, step-by-step, layer-by-layer, automatically from a base image.

    And,

    Editing Dockerfile just like write embeded language, matlab, or python.

    I wonder if is it strictly speaking a programming language? I mean that

    embeded, Matlab, or python, or even R.

    Automate building of Images means that package the currently created

    basic image with other installed app stack into the new image via Dockerfile.

    Dockerfile initial image to automate building image, and easiest migration.

14.[Notes about separately installing Linux via Docker on Mac(Chinese)](https://juejin.cn/post/6941284080029794312)

    <about using 3.Docker>

    Create a image, then start variety of containers. There may be Nginx, Redis,

    MySQL, MongoDB, or even Memcached.

15.[Config LNMP environment using Docker(Chinese)](https://cloud.tencent.com/developer/article/1858142)

    <about using 3.Docker>
    
    Docker+Nginx+MySQL+PHP+Redis.

    Directory architecture:
    
    .

    |_data

    |    |_elasticsearchdata

    |    |_mongodb

    |    |_mysql

    |    |_mysql8

    |_services

    |    |_elasticsearch

    |    |_mysql

    |    |_mysql8

    |    |_nginx

    |    |_redis

    |_log

    |_docker-compose.yml

    |_env

    |_www

16.[Develop C++ via Docker under CLion and VSCode(Chinese)](https://graueneko.com/archives/64/)

    <about using 3.Docker>

    Using VSCode debug remote virtual machine contianers via Microsofts'"Remote
    
    Developent", current workspace folder".devcontainer" with "devcontainer.json"

    and CMake extensions optional"Remote-Contianers: Open Folder in Contianer".

17.[The idea to config the development environment of LNMP via Docker on Mac(Chinese)](https://www.php.cn/php-ask-479200.html)

    <about using 3.Docker>

    The useage of Docker is that a container do only provide one service.

    The designed principle of Docker is not to run services at Backend, actually
    
    to run services at Frontend.

    From downloading image command "docker pull linux_release", then, creating

    contianer command "docker run ...", to entering contianer command "docker

    exec ...".

    I wonder if are you creating all contianers under one image or one image 

    with one container?

    Now, I know that the auth create contianer one by one image, all the image

    are seperated, also, the contianer under image are seperated.

    And, my guess was right. There are two ways to create multiple services,

    the one is that one kind image create one kind contianer; the another

    is that all services are created below one base image with starting

    one contianer one service.

    If create all contianers under only one image, that just like a physical

    Linux;

    If creat contianer one by one image, that all called seperated system, 

    distributed system, computer cluster, or service farm.

18.[Setup C/C++ development environment via Docker on Mac(Chinese)](https://zhuanlan.zhihu.com/p/422010999)

    <about using 3.Docker>

    Automate Docker via four files: Dockerfile, entrypoint.sh, rsync.conf, 

    docker-compose.yml. 

    That's a good idea.

19.[Create the development environment of DNMP via Docker on Mac(Chinese)](https://www.ucloud.cn/yun/28764.html)

    <about using 3.Docker>

    Great DNMP directory:

    .

    |_conf

    |    |_conf.d

    |    |    |_certs

    |    |    |    |_site2

    |    |    |_site1.conf

    |    |    |_site2.conf

    |    |__my.cnf

    |    |__nginx.conf

    |    |_php-fpm.d

    |    |    |_www.conf

    |    |_php.ini

    |__docker-compose.yml

    |__docker-compose54.yml

    |__docker-compose56.yml

    |_log

    |    |__mysql.slow.log

    |    |__nginx.error.log

    |    |__nginx.site1.error.log

    |    |__nginx.site2.error.log

    |_mysql

    |_php

    |_www

        |_site1

        |_site2

    This blog also has more description about MySQL, Redis.

20.[Docker build LNMP via deployer posting(Chinese)](https://learnku.com/articles/19868)

    <about using 4.Cloud Host + using 3.Docker>

    "docker pull service" is to create image;

    "apt-get install service" it to install services below that base

    image.

    Like LNMP or DNMP, one image, one contianer, one service;

    Base image also could install many services.

21.[Using Docker build up Linux server on Mac(Chinese)](https://blog.csdn.net/liqingbing12/article/details/109307073)

    <about using 3.Docker>

    The installed many applications of Docker contianers should be sync as a 

    new sync_image.

22.[Setup the development environment ofr Linux server(Chinese)](https://www.codeleading.com/article/40092840458/)

    <about using 2.Virtual Machine>

    The "environment installed package" of Linux release version should be 
    
    installed seperating from the system directory in order to conveniently 
    
    delete without affecting the system directory.
    
    "oh-my-zsh" is the functional assistant of shell zsh.

    "vim7.4+" is to wintness the liking lamda of C++11.

    "GCC9.1" supports the C11 C14 C+=17, well error prompt.

    "bison" is to solve the warming of "'bison' is missing on your system".

    "textinfo" is to solve the warming of "'makeinfo' is missing on your system".

    "automake1.15+" is requisite for GCC.

    "autoconf2.69" is essential to "automake1.15+".

    "GCC" is cruial that that is vital to more than 30 minutes to install.

    "GDB8.3" is the requirement of "GCC" with installing after "GCC".

    "CMake3.15" product "Makefile" with source files.

    "Ragel6.10" is the limited state machine to edit the parser protocol.

    Others like "psmic", "openssl-devel", "net-tools".

23.[Build Linux C++ development environmnet with VS2017(Chinese)](https://segmentfault.com/a/1190000016300215)

    <about using 2.Virtual Machine>

    VS2017 log into virtual machine via SSH.

    Linux release below virtual machine install like "openssh-server", "g++",

    "gdb" and "gdbserver".

24.[What's the development environment of C/C++ under Linux(Chinese)](https://www.zhihu.com/question/19848310/answers/updated?page=1)

    <about using Development Tools>

    editor: Jebains's paid Clion, vim, MicroSoft's VSCode,

    script: zsh, bash, shellcheck,

    debugger: 
      
      (Online)google-breakpad; 
      
      (LIVE)gdb(functionally stack trace, that bugger home location),  

            printf(<syslog, one prinf let IO console apply more resources than
            
            once IPC call systlog. Could relocate syslog, file, udp socket
            
            (receive log output), define marco to realize classify sign or 
            
            level),

            syslog(call IPC, e.g:log4cxx(support UDP log), or log file), open 
            
            source chromium's logging module,

            "UDP log" could record multiple devices's log at a time, easy to

            checkout and relocate or track. e.g: when a bugger happens, you

            could track that bugger cia UDP log, do not need to go to Test 
        
            Group to checkout their testing log,


            printk(using in printf kernel, every changed debug should be delete
            
            everytime, every debug every recompile, not always function that 
            
            means not output print everytime),

            systemtap, perf, kdump,

            valgrind(memory lock(dynamic mem statistics)), 

            SAFECode(LLVM subproject, to solve memory lock, faster valgrind),

    memory lock: not free that applied mem, access illegal mem(Segmentation
    
                fault), use not initalized mem, ...

    log: web checkout,
    
    optimization: gprof,

    test framework: DejiGnu, CppUnit,
    
    single unit test: googletest,

    others's code review: grep, Source Insight,

    follow code: cscope, ctags, gtags,

    grammer parser: global,

    checkout static code: splint,

    autocomplete: YouCompleteMe,

    lint: pypep8, pylint, jslint,

    compiler: 
    
      (Makefile)GNUMake,
      
      (CMake)

    compiler platform: remote Jenkins(hunson), chroot

    code sync: virtual machine settings share folder with VS editting code, 
    
    "Ctrl+shift+s" syncing code, recompileing before debugging.

    project: autoconf,

    code style: cpplint.py, google-styleguide.google.com...,

    style formater: astyle, astyle.sourceforge.net/...,

    document generation/orgnization: doxygen,

## 3.C++ Tools

"`apt-get`" is being called to update the package repository;

"`build-essential`" package which contains the C and C++ compilers and standard

libraries for Linux;

"`autoconf`", "`libtool`", and "`pkg-config`" packages are also used for building

the C++ programs;

Also, "`automake`", "`make`".

"`CMake`"("`cmake`") is a generator tool that takes a description of the build process and

can generate a Makefile for the target platform; On the Linux, it will use GCC

and G++ to build the program.

"`openssh-server`"

"`g++`"

"`gdb`"

"`gdbserver`"

"`net-tools`" includes "`ifconfig`"

"`tar`"

"`rsync`"

"`python3`"

"`python3-pip`"

"`libboost-dev`"

## 4.Source Or Library Or Application Tools

"`SSH`" is to connect the remote Host, the virtual Machine, that Docker contian

-ers with the local Host Mac.

"`Nginx`" is a architecture of server. That need: `GCC` environment(`gcc-g++`),

lib `PCRE`(parser Lamda: `pcre`, `pcre-devel`), `zlib`(compress and decompress:

`zlib`, `zlib-devel`), OpenSSL protocol(`openssl`).

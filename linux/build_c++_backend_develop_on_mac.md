# Manually C++ Back-end Development On Mac

I'm a new hire that the company has recently given a job for me, and I've got a

working notebook Mac, I need to code Linux server using C++ on Mac. I wonder if

is there any tips to do that?

## 1.First Supposition

I used to run Fedora on Mac using Paralles Desktop 11, and I heard that Docker

support Contianer carrying Linux on Mac, and I know that I could use Web Services

to run C++ code under Linux, as Amazon Elastic Compute Cloud(EC2: Cloud Server)

do, also, I could buy an external Raspberry Pi to run the need C++ Code at a

lower price and better solution.

So, that's clear.

Kill Linux C++ Back-end on Mac(LXCBEOMAC)

1.Physical Linux Notebook(dual boot Linux and macOS)

Dual boot building harmful.

2.Virtual Machine(running Linux)

e.g: [Vagrant](https://qr.ae/pvKYln)+ VirtualBox.

This is the simplest route, but is effectively just building in Linux.

3.Docker(Linux based containers running on MacOS)

The docker image, this could end up being difficult to run/debug your

application and have the MacOS IDE understand error messages. Also use vagrant

instead of docker.

4.Cloud Host(remote Linux)

Well idea.

5.[Raspberry Pi](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/)(a proper Linux computer)

Nice!

6.Cross GCC on MacOS

Do Not recommand!

## 2.Reading Plan

I'm ready to checkout the Journal, Blog, Stackoverflow, or Others.

Reading notes:

1.[Setting up a Simple Docker Dev Environment](https://www.ctl.io/developers/blog/post/setting-up-a-simple-docker-dev-environment)

    <about using 3.Docker>

    Docker has two modules. The one is the static way, dependenciesand testing,

    or just as App release version; the another is dynamic way, application

    under active development using "rsync", just as App debug version.

2.[A productive development environment with Docker on OS X](https://www.ybrikman.com/writing/2015/05/19/docker-osx-dev/)

    <about using 3.Docker>

    Edit Code at Mac, compile and test at LXC via Docker, sync the mac directory

    to the virtual machine Docker. Mount my folder into my Docker via "rsync".

3.[Running Docker on AWS from the ground up](https://www.ybrikman.com/writing/2015/11/11/running-docker-aws-ground-up/)

    <about using 4.Cloud Host>

    Compute, ship and post your App using using Elastic Compute Cloud(EC2) via 
    
    Amazon Web Services. Multiple environment using Docker in EC2 Contianer 

    Services(ECS).

4.[Infrastructure as code: running microservices on AWS using Docker, Terraform, and ECS](https://www.ybrikman.com/writing/2016/03/31/infrastructure-as-code-microservices-aws-docker-terraform-ecs/)

    <about using 4.Cloud Host>

    Auto build, ship and post platform via Docker, ECS and Terraorm. That's

    funncy and powerful. I could use that auto-idea on my Mac Docker for build,
    
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

    Because if you turn down Docker, the continer will miss, until you use last 
    
    time with manually rebuild.

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

    I've already read at "Dockerfile Syntax".

14.[Docker Explained: Using Dockerfiles to Automate Building of Images](https://www.digitalocean.com/community/tutorials/docker-explained-using-dockerfiles-to-automate-building-of-images)

    <about using 3.Docker>

    Editing Dockerfile just like write embeded language, matlab, or python.

    I wonder if is it strictly speaking a programming language? I mean that

    embeded, Matlab, or python, or even R.

    Automate building of Images means that package the currently created

    basic iamge with other installed app stack into the new image via Dockerfile.

## 3.C++ Tools

"`apt-get`" is being called to update the package repository;

"`build-essential`" package which contains the C and C++ compilers and standard

libraries for Linux;

"`autoconf`", "`libtool`", and "`pkg-config`" packages are also used for building

the C++ programs;

"`CMake`" is a generator tool that takes a description of the build process and

can generate a Makefile for the target platform; On the Linux, it will use GCC

and G++ to build the program.

## 4.RoadMap

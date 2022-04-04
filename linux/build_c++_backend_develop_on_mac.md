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

This is the simplest route, but is effectively just building in Linux.

3.Docker(Linux based containers running on MacOS) Or [Vagrant](https://qr.ae/pvKYln)+ VirtualBox

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

    to the virtual machine Docker.

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

## 3.RoadMap


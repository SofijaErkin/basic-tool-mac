# Debian Manually Upgrade GCC TO Support C++17

## deps

    gmp, mpfr, mpc, isl

## [download from source](http://mirrors.concertpass.com/gcc/releases/) and compile install

    cd 

    wget https://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz

Notice:

    ERROR: The certificate of ‘ftp.mirrorservice.org’ is not trusted.

    ERROR: The certificate of ‘ftp.mirrorservice.org’ has expired.

to fix the upstairs:

    sudo wget http://mirrors.concertpass.com/gcc/releases/gcc-7.3.0/gcc-7.3.0.tar.gz

## source

US, San Francisco: [https://bigsearcher.com/mirrors/gcc/](https://bigsearcher.com/mirrors/gcc/releases/).

US, San Jose: [http://www.netgull.com](http://www.netgull.com/gcc/releases/).

US, Michigan: [http://mirrors.concertpass.com/gcc/](http://mirrors.concertpass.com/gcc/releases/).

## refer

[How to Install GCC on Debian 9](https://linuxhostsupport.com/blog/how-to-install-gcc-on-debian-9/).

[How to switch between multiple GCC and G++ compiler versions on Ubuntu 20.04 LTS Focal Fossa](https://linuxconfig.org/how-to-switch-between-multiple-gcc-and-g-compiler-versions-on-ubuntu-20-04-lts-focal-fossa).

[Install and Use G++ on Ubuntu](https://linuxhint.com/install-and-use-g-on-ubuntu/).

[How can I install a specific version of gcc on ubuntu 18.04](https://askubuntu.com/a/1225254).

[How to install GCC piece by piece with GMP, MPFR, MPC, ELF, without shared libraries?](https://stackoverflow.com/a/9450422/10846570)

[Which versions of GMP, MPC, and MPFR were used to compile GCC?](https://stackoverflow.com/a/55084516/10846570)

[Upgrade GCC on Linux(Chinese).](https://www.hzuni.online/archives/linux%E5%8D%87%E7%BA%A7gcc%E7%89%88%E6%9C%ACacompilerwithsupportforc11languagefeaturesisrequiredmd)

[Upgrade GCC to 7.2.0 on Ubuntu(Chinese).](https://blog.csdn.net/u012969412/article/details/109532209)

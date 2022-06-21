# Software Engineer Tools Conclusions

I need to conclude software engineering tools about what are they and how to use

those.

## 1. Commands Or Plug-ins

### 1.1 Sync Data

If Syncing data use sharing folder, virtual machine could access Host machine's

folders.

If Syncing data use the setting of image folder or the creation of sharing

internet, the host machine could access the virtual machine's folders.

This we talk about the second syncing data.

The below sync data is that Host machine access the Linux under virtual machine

.

Data between Linux(Virtual Machine) and MacOS/Window(Host Machine); Or,

data between Linux(Remote/Cloud Machine) and MacOS/Window(LocalMachine); Or,

data between Linux(Docker) and MacOS/Window(Host Machine).

refer:

[(Mac+VirtualBox+Linux+NAT+Local)Using VirtualBox build local virtual environment on Mac(Chinese Blog)](https://www.cainiaojc.com/note/qa3hep.html)

[(Mac+VMware+Linux+Bridge)Config VMware virtual machine connecting with the internet on MacOS(Chinese)](https://segmentfault.com/a/1190000016926655)

[(Windows+VMware+Linux+NAT+Remote)Using one host Log into a virtual machine on another Host(Chinese Blog)](https://novicenote.com/2444.html).

[(Windows+VMware+Linux+NAT+Remote)Log into virtual machine using the current host(Chinese Blog)](https://blog.csdn.net/Zereao/article/details/89420513).

[(Windows+VMware+Linux+NAT+Remote)How to access the Web services under virtual machine(Chinese Blog)](https://codeantenna.com/a/BIK7VaksyV)

[(Windows+VMware+Linux+Bridge+Remote)Mac access the CentOS at the virtual machine under the same local internet(Chinese)](https://blog.csdn.net/innovate1989/article/details/103221959)

First, we need to find out the IP address.

Find Public IP on Linux/MacOS:

`curl ifconfig.me`;

`curl ipinfo.io/ip`;

`curl api.ipify.org`;

`curl checkip.dyndns.org`;

`curl ident.me`;

`curl ipecho.net/plain`.

Find Mac IP:

(Local IP)

(wired connections): `ipconfig getifaddr en1`;

(Wi-Fi): `ipconfig getifaddr en0`;

Find Linux IP:

(Local/[Private](https://opensource.com/article/18/5/how-find-ip-address-linux)/[Internal IP](https://constellix.com/news/what-is-my-ip-address))

`hostname -I`;

`hostname -I | awk '{print $1}'`;

`ip route get 1.2.3.4 | awk '{print $7}'`;

`nmcli -p device show`.

`ip addr` This will return the address in either the Ethernet (ether) or

wireless (link) information, depending on how the device is connected to the

network. And this command will display the IPv4 and IPv6 addresses of all of

the network-connected devices. The IP address you need can be found under one

of the following labels: UP, BROADCAST, RUNNING, MULTICAST.

#### 1.1.1 rsync(Shell command)

Transform/Transmit and sync the data/code between local and remote.

### 1.2 [spell check](https://ostechnix.com/use-spell-check-feature-vim-text-editor/)(command)

#### 1.2.1 Vim

VSCode just use Extension `Code Spell Checker`  and `Grammarly (unoffical)`.

[vim for writers](https://hackernoon.com/vim-for-writers-ee15d2a8f512).

Config spell in Vim under `/usr/share/vim/vim81/spell`.

Need to type the command inside Vim session.

`:help spell`: know more about spell check feature.

`:set spell` : enable spell check.

`:set nospell` : disable spell check.

`]s` : find the misspelled word after the cursor (forward search).

`[s` : find the misspelled word before the cursor (backward search).

`]S` :  (note the capital "`S`") - Similar to "`]s`" but only stop at bad words,

not at rare words or words for another region.

`[S` : similar to "[s" but search backwards.

`z=` : find suggestions for the that particular word (then type number `XXX` and

`ENTER` replace that misspelled word).

`:wq` : save the changes and quit Vim editor.

`:set spell spelllang=en_us` : set spell language to US English.

(Terminal session) `$ mkdir -p ~/.vim/spell/` and

`:set spellfile=~/.vim/spell/en.utf-8.add` : enable add words to spellfile.

either `[s` or `]s` and type `zg`. It will add the word under the cursor as good word

in spellfile.

`zug` : undo this add (remove the word from spellfile).

`zw` : mark the mispelled word.

`zuw` : undo this action.

`:help spelllang` : checkout spell language.

`:help spellfile` : checkout added spell file.

`:help spellfile-cleanup`.

Related Read:

1.[How To Manage Vim Plugins Using Vundle On Linux](https://ostechnix.com/manage-vim-plugins-using-vundle-linux/).

2.[GNU Aspell – A Free, Open Source And Independent Spell Checker](https://ostechnix.com/gnu-aspell-free-open-source-independent-spell-checker/).

### 1.3 [Syntax highlighting](https://linuxhint.com/vim_syntax_highlighting/)(command)

#### 1.3.1 Vim

Syntax highlighting is on for vim editor by default.

After opening target file in vim editor, press `ESC` key and type `:syntax on`

to enable syntax highlighting.

Press `ESC` key and type, `syntax off` to disable syntax highlighting.

### 1.4 Auto-complete(command)

#### 1.4.1 oh-my-zsh(Shell)

Auto list the directories: input `cd` and type `tab` key, use `tab` switch.

AUto complete simplified directory: access `/usr/local/bin`, input `cd /u/l/b`

and type `tab` to auto complete.

Auto check camel case and correct: access `Desktop`, input `cd de` and type

`tab` to correct case; Or, check `README.md`, input `cat re` and type `tab` to

auto complete and correct.

Auto complete command: check using command, input`kubectl` and type `tab` to

check useable command.

Auto complete command parameter: input `kill` and type `tab` to auto display

running process ID.

Refer: [Using oh-my-zsh build Linux Shell environment(Chinese)](https://sysin.org/blog/linux-zsh/).

## 2. Applications

## 3. Online Services

## 4. Framework Or Libraries

## 5.Know About

### 5.1[CLion](https://en.wikipedia.org/wiki/JetBrains#CLion)

CLion (pronounced "sea lion") is a C and C++ IDE for Linux, macOS, and Windows

integrated with the CMake build system. The initial version supports GNU

Compiler Collection (GCC) and Clang compilers and GDB debugger, LLDB and Google

Test.

### 5.2[JetBrains](https://en.wikipedia.org/wiki/JetBrains)

JetBrains, initially called IntelliJ Software, makes tools for software

developers and project managers.

### 5.3[Blaze](https://news.ycombinator.com/item?id=9257000)

Blaze, only by google using, a tool to automate software building and testing.

Blaze includes the description of source dependence, distributed building,

test. Also, well Integrated with the management system of source, auto-deploy, continuous integrated system.

### 5.4[Bazel](hhttps://bazel.build/)

Bazel is a free software tool for the automation of building and testing of

software. The company Google uses the build tool Blaze internally and released

an open-sourced port of the Blaze tool as Bazel, named as an anagram of Blaze.

Similar to build tools like Make, Apache Ant, or Apache Maven, Bazel builds

software applications from source code using a set of rules. Rules and macros

are created in the Starlark language, a dialect of Python. There are built-in

rules for building software written in the programming languages of Java, C,

C++, Go, Python, Objective-C and Bourne shell scripts.

### 5.5[Blade](https://github.com/chen3feng/blade-build)

Blade is a building system from Tencent, supports many mainstream programming

languages, such as C/C++, java, scala, python, protobuf.

### 5.6[Buck](https://buck.build/)

Buck is a build system developed and used by Facebook. It encourages the

creation of small, reusable modules consisting of code and resources, and

supports a variety of languages on many platforms.

### 5.7[Nuclide](https://nuclide.io/)

Atom was (and is) developed by GitHub as a text editor. Facebook then developed

the Nuclide and Atom IDE projects to turn Atom into an integrated

development environment (IDE), but development on Nuclide and Atom IDE stopped

in December 2018. Development on Atom itself is ongoing.

Nuclide is built as a single package on top of Atom to provide hackability

and the support of an active community. It provides a first-class development

environment for React Native, Hack and Flow projects.

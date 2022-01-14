
# Debug C++11 manually with VSCode(mac)

This is a Configuration for VSCode to debug C++11 on mac. 

I'v used Clang++ to compile C++11, Code-Runner(VSCode Extension) to run C++11,

CodeLLDB(VSCode Extension) to debug C++11, C/C++ Clang Command Adopter

(VSCode Extension) to provide static detection.

But Not include Microsoft C/C++(Identifier: ms-vscode.cpptools, for C/C++ 

IntelliSense, debugging, and code browsing)!

Please Do Not Download  C/C++ (Microsoft Officially produced Extension).

Because This CPPtools and that CodeLLDb conflict.

## 1.Envirnment

### 1.1Hardware

CPU: Intel

### 1.2Software

#### 1.2.1System

Laptop OS: macOS 10.12

Clang: 9.0.0

Llvm-gcc: 4.2.1

#### 1.2.2Application

Only config on Visual Studio Code.

Version: 1.63.2

Commit: 899d46d82c4c95423fb7e10e68eba52050e30ba3

Date: 2021-12-15T09:37:28.172Z

Electron: 13.5.2

Chromium: 91.0.4472.164

Node.js: 14.16.0

V8: 9.1.269.39-electron.0

OS: Darwin x64 16.7.0

## 2.VSCode Extensions

### 2.1Static detection Extension

(Not required but highly recommended)

Name: C/C++ Clang Command Adopter

Author: Yasuaki MITANI

Version: 0.2.4

### 2.2Runner Extension

(Required)

Name: Code Runner

Author: Jun Han

Version: 0.11.6

### 2.3Debug Extension

(Required)

Name: CodeLLDB

Author: Vadim Chugunov

Version: 1.4.5

Do Not Download the latest version 1.6.10 or any 1.6.x version.

Do Not Download the latest version 1.6.10 or any 1.6.x version.

Do Not Download the latest version 1.6.10 or any 1.6.x version.

Or 

If you download 1.6.x, please [rollback extension/install](https://stackoverflow.com/questions/42626065/vs-code-how-to-rollback-extension-install-specific-extension-version) specific extension 

version.

e.g: CodeLLDB v1.4.5.

Version 1.6.x has caused much more [buggers since Nov 5, 2020](https://github.com/vadimcn/vscode-lldb/issues/387), and [never fix](https://github.com/NixOS/nixpkgs/issues/148946).

Also, 

that bugger version 1.6.10 has taken me seven days to config debug C++

with VSCode on mac, made me in trumble, made me depressed even masturbate 4 

times in a week. Fuck!!!

## 3.Install

### 1.Check Envirnment

Please enter Mac Terminal. Some one use the default Terminal, 

I just use iTerm.

Use this command to checkout the CPU information on mac:

`sysctl -n machdep.cpu.brand_string`

It shows like:

`Intel(R) Core(TM)2 Duo CPU E8600 @ 2.40GHz`

That "`Intel`" is the type of CPU on mac.

Also, use this command to check the laptop system version on mac:

`sw_vers`

That Terminal show like:

`ProductName:	Mac OS X`

`ProductVersion:	10.12.4`

`BuildVersion:	16E195`

That "`ProductVersion`" is the version of the macOS.

And, use this command to checkout the version of clang on your mac:
`clang --version`
That shows like:

`Apple LLVM version 9.1.0 (clang-902.0.39.1)`

`Target: x86_64-apple-darwin17.4.0`

`Thread model: posix`

`InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin`

That means your `Clang` version was `9.1.0`.

But if that "clang --version" output shows like:

`Apple LLVM version 9.1.0 (clang-902.0.39.1)`

`Target: x86_64-apple-darwin17.4.0`

`Thread model: posix`

`InstalledDir: /Library/Developer/CommandLineTools/usr/bin`

Just use this command to checkout the Now Clang version you are using:

`cd /Library/Developer/CommandLineTools/usr/lib/clang/ && ls `

That may show like "`9.0.0`" or "`9.1.0`" or "`10.0.0`". 

That are your Clang version.

Just use this command to checkout the gcc version of your mac:`gcc --version`

That shows like:

`Configured with: --prefix=/Applications/Xcode.app/Contents/Developer/usr --with-gxx-include-dir=/usr/include/c++/4.2.1`

`Apple LLVM version 9.0.0 (clang-900.0.39.2)`

`Target: x86_64-apple-darwin16.7.0`

`Thread model: posix`

`InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin`

the first line "`4.2.1`" is your `gcc/g++` version.
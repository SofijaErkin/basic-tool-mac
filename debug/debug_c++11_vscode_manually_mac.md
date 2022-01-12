
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

Laptop OS: macOS 10.12

CPU: Intel

### 1.2Software

#### 1.2.1System

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

Please enter Mac Terminal. Some one use the default Terminal, I just use iTerm.

Also, use this command to check the laptop system version on mac:

`sw_vers`

That Terminal show like:

`ProductName:	Mac OS X`

`ProductVersion:	10.12.4`

`BuildVersion:	16E195`
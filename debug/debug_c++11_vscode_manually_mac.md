
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

### 1.1Hardware Envirnment

CPU: Intel

### 1.2Software Envirnment

#### 1.2.1System Software

Laptop OS: macOS 10.12

Clang: 9.0.0

Llvm-gcc: 4.2.1

#### 1.2.2Application Software

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

Also, CodeLLDB v1.5.0 is Ok.

Update 10:17 PM Monday,January 17 2022 LA.

e.g: CodeLLDB v1.4.5.

Version 1.6.x has caused much more [buggers since Nov 5, 2020](https://github.com/vadimcn/vscode-lldb/issues/387), and [never fix](https://github.com/NixOS/nixpkgs/issues/148946).

Also, 

that bugger version 1.6.10 has taken me seven days to config debug C++

with VSCode on mac, made me in trouble, made me depressed even masturbate 4 

times in a week. Fuck!!!

## 3.Install

### 3.1Check Envirnment

#### 3.1.1Hardware Envirnment

Please enter Mac Terminal. Some one use the default Terminal, 

I just use iTerm.

Use this command to checkout the CPU information on mac:

`sysctl -n machdep.cpu.brand_string`

It shows like:

`Intel(R) Core(TM)2 Duo CPU E8600 @ 2.40GHz`

That "`Intel`" is the type of CPU on mac.

#### 3.1.2Software Envirnment

##### 3.1.2.1System Software Envirnment
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

#### 3.1.2.2Application Software Envirnment

Make sure you have installed VSCode Application on mac. Enter VSCode 

Application, click the "`Code`" menu button, and click the select icon

"`About Visual Studio Code`", that will show your VSCode version.

That may shows like:

`Version: 1.63.2`

`Commit: 899d46d82c4c95423fb7e10e68eba52050e30ba3`

`Date: 2021-12-15T09:37:28.172Z`

`Electron: 13.5.2`

`Chromium: 91.0.4472.164`

`Node.js: 14.16.0`

`V8: 9.1.269.39-electron.0`

`OS: Darwin x64 16.7.0`

#### 3.1.3VSCode Extensions Envirnment

To avoid any issues, please do not download any VSCode Extensions yet.

### 3.2 Install Specific VSCode Extensions

To avoid any issues, please install my version of the Extensions on VSCode.

`Code Runner v0.11.6` (Author: Jun Han）

`C/C++ Clang Command Adapter v0.2.4` (Author: Yasuaki MITANI）

`CodeLLDB v1.4.5` (Author: Vadim Chugunov)

If you don't find the version of my plugin, please [rollback or install](https://stackoverflow.com/questions/42626065/vs-code-how-to-rollback-extension-install-specific-extension-version) 

specific version.

## 4.Compile And Debug

### 4.1Create workspace and folder

Enter your Terminal. Use this command to ensure you are in your user directory:

`pwd`

That may shows:

`/Users/marryme`

As Terminal shows, `marryme` is my mac user name.

If that do not shows "/Users/your-user-name", then just use this command to 

enter your user directory:

`cd`

Then create and enter your VSCode stored directory, use this command:

`mkdir VSCode && cd VSCode`

Also create and enter your C++ Project stored directory, use this command:

`mkdir CppProject && cd CppProject`

And create and enter your first debug workspace folder `helloworld`, use this 

command:

`mkdir HelloWorld && cd HelloWorld`

### 4.2Create vscode folder and main function

First I need to create the main function of `HelloWorld` workspace, use this

command:

`vim helloworld.cpp`

Pay attention to the common commands of `vim` or `bash`:

1) Press the letter key "`i`" to edit mode;

2) Press the return key "`esc`" + input the letter "`:wq`": save and exit;

And that will enter an empty `helloworld.cpp`, please copy this program:

`#include <iostream>`

`#include <vector>`

`#include <string>`

`using namespace std;`

`int main()`

`{`

    `vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};`

    `for (const string& word : msg)`
    
    `{`
    
        `cout << word << " ";`
        
    `}`
    
    `cout << endl;`
    
`}`

This time just create and enter vscode configuration folder, use this command:

`mkdir .vscode && cd .vscode`

Then create four configuration files.

use thia command to create task.json:

`vim task.json`

copy this program to `task.json`:

`{`

  `// See https://go.microsoft.com/fwlink/?LinkId=733558`
  
  `// for the documentation about the tasks.json format`
  
  `"version": "2.0.0",`
  
 ` "tasks": [`
  
    `{`
    
      `"type": "shell",`
      
      `"label": "Compile With clang++",`
      
      `"command": "clang++",`
      
      `"args": [`
      
        `"-std=c++11",`
        
        `"-stdlib=libc++",`
        
        `"${file}",`
        
        `"-o",`
        
        `"${fileDirname}/${fileBasenameNoExtension}",`
        
        `"-g"`
        
      `],`
      
      `"options": {`
      
        `"cwd": "${workspaceFolder}"`
        
      `},`
      
      `"group": {`
      
        `"kind": "build",`
        
        `"isDefault": true`
        
      `}`
      
    `}`
    
  `]`
  
`}`

then create `settings.json`, use this command:

`vim settings.json`

copy this program to `settings.json`:

`{`

    `"files.defaultLanguage": "c++",`
    
    `"editor.suggest.snippetsPreventQuickSuggestions": false,`
    
    `"editor.acceptSuggestionOnEnter": "off",`
    
    `"code-runner.runInTerminal": true,`
    
    `"code-runner.executorMap": {`
    
        `"c": "cd $dir && gcc -std=c11 -stdlib=libc++  $fileName  -o $fileNameWithoutExt && $dir$fileNameWithoutExt",`
        
        `"cpp": "cd $dir && g++ -std=c++11 -stdlib=libc++ $fileName -o $fileNameWithoutExt && $dir$fileNameWithoutExt"`
        
    `},`
    
    `"code-runner.saveFileBeforeRun": true,`
    
    `"code-runner.preserveFocus": false,`
    
    `"code-runner.clearPreviousOutput": false,`
    
    `"code-runner.ignoreSelection": true,`
    
    `// "C_Cpp.clang_format_sortIncludes": true,`
    
    `"editor.formatOnType": true,`
    
    `"clang.cxxflags": [`
    
        `"-std=c++11"`
        
    `],`
    
    `"clang.cflags": [`
    
        `"-std=c11"`
        
    `],`
    
    `"clang.completion.enable": true`
    
`}`

then create `launch.json`, use this command:

`vim launch.json`

copy this program to `launch.json`:

`{`

  `// Use IntelliSense to learn about possible attributes.`
  
  `// Hover to view descriptions of existing attributes.`
  
  `// For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387`
  
  `"version": "0.2.0",`
  
  `"configurations": [`
  
    `{`
    
      `"name": "Debug With LLDB",`
      
      `"type": "lldb",`
      
      `"request": "launch",`
      
      `"program": "${fileDirname}/${fileBasenameNoExtension}",`
      
      `"args": [],`
      
      `"stopAtEntry": true,`
      
      `"cwd": "${workspaceFolder}",`
      
      `"environment": [],`
      
      `"externalConsole": false,`
      
     ` "preLaunchTask": "Compile With clang++"`
      
    `}`
    
  `]`
  
`}`

then create `c_cpp_properties.json`, use this command:

`vim c_cpp_properties.json`

If your seprated Command-line tools's Clang version is `9.0.0`, copy this program

directly.

If not, just use this command to checkout the Clang version of your seprated 

Command-line tools:

`cd /Library/Developer/CommandLineTools/usr/lib/clang/ && ls`

That may show like this: `9.0.0` or `9.1.0` or `10.0.0` or X.X.X. As this may show,

The Clang version of your seprated Command-line tools is `9.0.0`, or `9.0.1` or 

`10.0.0` or `X.X.X`. And just replace my `9.0.0`.

If you do not have a seprated Command-line tools, just install [a seprated command](https://developer.apple.com/download/all/?q=command%20line%20tools)

line tools for your Mac depencing your macOS System.

`{`

  `"configurations": [`
  
    `{`
    
      `"name": "Mac",`
      
      `"includePath": [`
      
        `"${workspaceFolder}/**",`
        
        `"/Library/Developer/CommandLineTools/usr/include",`
        
        `"/Library/Developer/CommandLineTools/usr/lib/clang/9.0.0/include",`
        
        `"/usr/local/include",`
        
        `"/Library/Developer/CommandLineTools/usr/include/c++/v1",`
        
        `"/usr/include"`
        
      `],`
      
      `"defines": [],`
      
      `"macFrameworkPath": [`
      
        `"/System/Library/Frameworks",`
        
        `"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks",`
        
        `"/Library/Frameworks"`
        
      `],`
      
      `"compilerPath": "/usr/bin/clang",`
      
      `"cStandard": "c11",`
      
      `"cppStandard": "c++11",`
      
      `"intelliSenseMode": "clang-x64"`
      
    `}`
    
  `],`
  
  `"version": 4`
  
`}`

then back to your workspace `HelloWorld`, use this command:

`cd ..`

the just use this command to checkout your workspace:

`pwd && tree -all`

it shows like:

`/Users/marryme/VSCode/CppProject/HelloWorld`

`.`

`| __.vscode`

`|    |`

`|    |_c_cpp_properties.json`

`|    |_launch.json`

`|    |_settings.json`

`|    |_tasks.json`

`|`    

`| __hellworld.cpp`

`1 directory, 5 files`

Then just use this command to enter VSCode:

`code .`

### 4.3VSCode Compile and Run and Debug

Enter your VSCode via "`code .`", then select `trust this workspace`.

Now start your compile or run, after that, then debug.

END.
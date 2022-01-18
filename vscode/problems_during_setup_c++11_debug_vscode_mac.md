# Problems occur during settings up C++11 Debugger with VSCode on mac

## 1.Source

### 1.1Output

#### 1.1.1DEBUG CONSOLE

##### 1.1.1.1(OUTPUT)Debug Not Function

`Launching: /Users/yq/VSCode/CppProject/helloworld/helloworld`

`Process exited with code 0.`

debug has been run, but no breakpoints have been set.

#### 1.1.2TERMINAL

##### 1.1.2.1DEBUG == Function OUTPUT

"Generate debug information" is not set in the task.json file

add this to `task.json/"args[]"`

`{`

   `"args":[`
 
       "-g"
 
    ]

`}`

##### 1.1.2.2 Successfully Run But Debug error

`> Executing task: clang++ helloworld.cpp -o helloworld.out -g <`

`helloworld.cpp:8:21: error: expected ';' at end of declaration`

  `vector<string> msg{"Hello", "C++",     "World",`
  
 `                   ^`
 
 `                   ;`
 
`helloworld.cpp:11:27: warning: range-based for loop is a C++11 extension [-Wc++11-extensions]`

  `for (const string &word : msg) {`
  
`                          ^`

`1 warning and 1 error generated.`

`The terminal process "zsh '-c', 'clang++ helloworld.cpp -o helloworld.out -g'" terminated with exit code: 1.`

`Terminal will be reused by tasks, press any key to close it.`

"Compile C++11" is not set in the task.json file

add this to `task.json/"args:[]"`

{

     "args": [
				"-std=c++11",
				"-stdlib=libc++"
            ]

}

### 1.2Notifications

#### 1.2.1Code language not supported or defined

Not running in the main function or in the configuration file, you can transfer to the main function to run

#### 1.2.2C/C++ Clang Command Adapter(Extension)

#### 1.2.2.1Please check your configurations: clang: error: no such file or directory: '["-std=c++11"]'

add this things on settings.json

{

    "clang.cxxflags": [
        "-std=c++11"
    ],
    "clang.cflags": [
        "-std=c11"
    ]

}
# Problems occur during settings up C++11 Debugger with VSCode on mac

## 1.Source

### 1.1Output

#### 1.1.1DEBUG CONSOLE

##### 1.1.1.1(OUTPUT)Debug Not Function

`Launching: /Users/yq/VSCode/CppProject/helloworld/helloworld`

`Process exited with code 0.`

debug has been run, but no breakpoints have been set.

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
# Problems occur during settings up C++11 Debugger with VSCode on mac

## Source

### NULL

#### Code language not supported or defined

Not running in the main function or in the configuration file, you can transfer 

to the main function to run

### C/C++ Clang Command Adapter(Extension)

#### Please check your configurations: clang: error: no such file or directory: '["-std=c++11"]'

add this things on settings.json

{

    "clang.cxxflags": [
        "-std=c++11"
    ],
    "clang.cflags": [
        "-std=c11"
    ]

}
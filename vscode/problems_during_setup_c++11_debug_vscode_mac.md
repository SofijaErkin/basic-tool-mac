# Problems occur during settings up C++11 Debugger with VSCode on mac

## Source

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

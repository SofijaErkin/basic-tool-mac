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

##### 1.1.2.2 Successfully Run But Debug as run

Terminal status: Just like running notice, press any button to end.

breakpoints: can set breakpoints in main function, but debug ignore that as run

do.

watch status: Variable or STL detection settings have no effect.

debugging control panel status: debugging control panel fransh rollout,

debugging control panel display period for a moment,

step over button do not show; step into button do not show;

step out button do not show.

Debug status: debug as the same as run.

Compile and debug envirnmnet: compile: clang, debug tool: cpptools, 

type/launch.json: cppdbg+lldb/MiMode.

Workspace envirnment: CodeLLDB: `v1.6.10`, C/C++ cpptools: `v1.8.0-insiders2`,

VSCode `v1.63.2`, CPU: `Intel`, Laptop: `macOS 10.12`, clang: `v9.0.0`, llvm-gcc: `v4.2.1`,

clang-format: `v1.9.0`, Code Runner: `v0.11.6`, C/C++ Clang Command Adapter: `v0.2.4`.

solution:

Deprecate and uninstall C/C++ cpptools. This version `1.6.10` of CodeLLDB has 

bugs, lower the version, choose `1.4.5` or `1.5.0`.

#### 1.1.3OUTPUT

##### 1.1.3.1Successfully Run But Debug error

    configuration: {
      name: 'Debug With LLDB',
      type: 'lldb',
      request: 'launch',
      program: '${fileDirname}/${fileBasenameNoExtension}',
      args: [],
      stopAtEntry: true,
      cwd: '${workspaceFolder}',
      environment: [],
      externalConsole: false,
      preLaunchTask: 'Compile With clang++',
      __configurationTarget: 5,
      relativePathBase: '/Users/yq/VSCode/CppProject/ms_vs_aus_doc_debug_test'
    }
    Listening on port 54343
    Received signal: SIGSEGV
       0: backtrace::backtrace::trace
       1: backtrace::capture::Backtrace::new
       2: codelldb::hook_crashes::handler
       3: __os_alloc_heap

    Debug adapter exit code=255, signal=null.

breakpoints: can set breakpoints in main function, but debug ignore that as run

do.

watch status: Variable or STL detection settings have no effect.

debugging control panel status: debugging control panel frensh exit, debugging

control panel display period for a moment, step over button do not show;

step into button do not show; step out button do not show.

Debug status: Debugger adapter abnormally terminates.

Compile and debug envirnmnet: compile: clang, debug tool: codelldb, 

type/launch.json: lldb.

Workspace envirnment: CodeLLDB: `v1.6.10`, C/C++ cpptools: `v1.8.0-insiders2`,

VSCode `v1.63.2`, CPU: `Intel`, Laptop: `macOS 10.12`, clang: `v9.0.0`, llvm-gcc: `v4.2.1`,

clang-format: `v1.9.0`, Code Runner: `v0.11.6`, C/C++ Clang Command Adapter: `v0.2.4`.

solution:

The codelldb plugin version has bugs, reduce the plugin version. There are bugs

in the `1.6.X` series version, replace the `1.4.5` or `1.5.0` version.

### 1.2Notifications

#### 1.2.1Code language not supported or defined

Not running in the main function or in the configuration file, you can transfer 

to the main function to run

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

### 1.3Additional pop-up alerts

#### 1.3.1warning

##### 1.3.1.1Internal debugger error

eg.

`Internal debugger error: unable to find executable for `

`'/Users/yq/VSCode/CppProject/vscode_c_cpp/test.out'`

`launch.json` is missing "`preLaunchTask`".

Please add this in `launch.json/"configurations": []`:

{

    "configurations": [

      "preLaunchTask": "Build with Clang"

    ]

}

"preLaunchTask" in launch.json must be the same as "label" in task.json.

#### 1.3.2Severity error

#### 1.3.3fatal error
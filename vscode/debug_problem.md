# Workspace envirnment
## Platform
### Laptop: macOS 10.12
### CPU: Intel
### clang: 9.0.0
### llvm-gcc: 4.2.1
## APP
### VSCode 1.63.2
### clang-format: v1.9.0
### Code Runner: v0.11.6
### C/C++ cpptools: v1.8.0-insiders2
### C/C++ Clang Command Adapter: v0.2.4
### CodeLLDB: v1.6.10
# Problem
## Follow the official documentation of VSCode on Mac
### Compile and debug envirnmnet
compile: clang
debug tool: cpptools 
type/launch.json: cppdbg+lldb/MiMode
#### Build status: 
succecc 
#### Run status: 
succecc
#### Debug status:
debug as the same as 
##### debugging control panel status: 
debugging control panel fransh rollout
debugging control panel display period for a moment:
step over button do not show;
step into button do not show;
step out button do not show.
##### debugging show panel
###### watch status:
Variable or STL detection settings have no effect
###### breakpoints:
can set breakpoints in main function, but debug ignore that as run do.
#### Output status:
No output
#### Terminal status:
Just like running notice, press any button to end
## Out over the official documentation of VSCode on Mac
### Compile and debug envirnmnet
compile: clang
debug tool: codelldb
type/launch.json: lldb
#### Build status:
succecc
#### Run status:
succecc
#### Debug status:
Debugger adapter abnormally terminates
##### debugging control panel status:
debugging control panel frensh exit
debugging control panel display period for a moment:
step over button do not show;
step into button do not show;
step out button do not show.
##### debugging show panel
###### watch status:
Variable or STL detection settings have no effect
###### breakpoints:
can set breakpoints in main function, but debug ignore that as run do.
#### Output status:
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
#### Terminal status:
Terminal will be reused by tasks, press any key to close it.

## Ultimate solution: 

Deprecate and uninstall C/C++ cpptools. This version `1.6.10` of CodeLLDB has 

bugs, lower the version, choose `1.4.5` or `1.5.0`.

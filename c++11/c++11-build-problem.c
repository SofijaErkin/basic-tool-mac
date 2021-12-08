// Problem: Simple Code Need Help 
// - no instance of constructor matches argument list
// StackOverFlow: 
// https://stackoverflow.com/questions/25215882/simple-code-need-help-no-instance-of-constructor-matches-argument-list
/*
This may be related to the compilation environment you have configured.

Take mine as an example：

    #include <iostream>
    #include <vector>
    #include <string>

    using namespace std;

    int main() {
         vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};
    
         for (const string& word : msg) {
              cout << word << " ";
         }
         cout << endl;
    }

If that comiplers in online compiler, that successfully run.

    eg:programiz:

    https://www.programiz.com/cpp-programming/online-compiler/

Also, that output:

    Hello C++ World from VS Code and the C++ extension! 

But if that compilers in Visual studio Code, that will have the same problem as you.

    “no instance of constructor "std::__1::vector<_Tp, _Allocator>::vector [with _Tp=std::__1::string, _Allocator=std::__1::allocator<std::__1::string>]" matches the argument list”

How did that happen? Or, what did happen?

I never do not configure these files, eg:`"launch.json"`,`"c_cpp_properties.json"`. 

I compiled that directly after downloading VS Code and plug-ins C/C++ directly.

I think the trick to solve the problem is to make sure that there is no problem with the configured compilation environment. 

For example: If there is a problem in the IDE, then I can migrate it to an online compiler to test whether it can be compiled successfully.

If you are like me, and the same problem occurs without the configuration file, then the root cause of the problem is the failure to configure the file.

Finally, it's difficult for Visual Studio Code to configure C/C++ compilation environment files in macOS, but it can be solved. 

What's more, maybe that is connected to your C++ Language version, 

    Use g++ -std=c++11 <filename> when compiling.

It's better to use this command to run your code:

    g++ -g -Wall -std=c++11 helloworld.cpp

Or, please configure your tasks.json in VS code:

    "args": [
		  "-g",
		  "-Wall",
		  "-std=c++11",
		  "-stdlib=libc++",
		  "-g",
		  "${file}",
		  "-o",
		  "${fileDirname}/${fileBasenameNoExtension}"
		],
add `"-g"`, `"-Wall"` in the `"args"` of the tasks.

In short, 

firstly,

this error is reported because C++98 does not allow you to specify the initial element value when initializing the vector container. 

That was in C++11, you need to configure c++11 support.
   
1. If your problem was in VS code, then configure c++11 support in `.vscode/task.json`, plus `-std=c++11`, `-stdlib=libc++` configuration.

Secondly,

If you also use the C/C++ Clang Command Adapter plug-in in the VS code, 

because of C/C++ Clang Command Adapter plug-in is not configured to support C++11 by default, 

you also need to configure c++11 support.

1.Click `Code`->`Preferences`->`Settings`, search for `Clang: Cflags`, `Clang: Cxxflags` and add C++11 configuration;

2.`Clang: Cflags` adds Item: `"-std=c11"`, `Clang: Cxxflags` add Item: `"-std=c++11"`.

Thirdly,

also, you need the C++11 running environment configuration.

1. Click the gear of `Code Runner`⚙ (or right-click it directly) to open the extended settings;

2. Find `Code-runner: Executor Map` and click `Edit in settings.json`;

3. Find the line `"cpp"` in `"code-runner.executorMap"`;

4. Add `-std=c++11` to the end of `$fileNameWithoutExt` and save it for consumption.

Or, 

1.edit your Environment configuration `./vscode/setting.json/`; 

2.find `"code-runner.executorMap":`;

3.find `"cpp":` in `"code-runner.executorMap":`;

4.add `-std=c++11` between `$fileNameWithoutExt` and `&& $dir$fileNameWithoutExt`

just like:

[![enter image description here][1]][1]


  [1]: https://i.stack.imgur.com/mp1kP.png
*/

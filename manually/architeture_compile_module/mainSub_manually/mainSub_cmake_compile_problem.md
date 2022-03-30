# The problem during Project mainSub manually compiling using CMake

Let's reinstate the environment of compiling problem!

## 1.Problem A

### 1.1Terminal output during compiling

    Undefined symbols for architecture x86_64:
  
      "Pet::eat()", referenced from:
          
          _main in main-7f45d9.o
  
      "Pet::Pet(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >&)", referenced from:
      
          _main in main-7f45d9.o

    ld: symbol(s) not found for architecture x86_64

    clang: error: linker command failed with exit code 1 (use -v to see invocation)

### 1.2Run Or Not

Not.

### 1.3Fix Or Not

Fixed.

You know, i've just used "`Run Code ^\_N`" to run the program, but had not

added "`$dir/./petActive/source/*.cpp`" to the VSCode configuration .vscode

folder the "`settings.json`".

### 1.4May be

If main source could not call the active functional class/source file, there

may be do not add that active functional class/source file to the compile

command "`***/.cpp`".

### 1.5Other Fix Or Not

No.

## 2.Problem B

### 2.1Terminal output during compiling

### 2.2Run Or Not

### 2.3Fix Or Not

### 2.4May be

### 2.5Other Fix Or Not

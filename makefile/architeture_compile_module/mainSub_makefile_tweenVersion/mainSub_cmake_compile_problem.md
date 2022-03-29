# The problem during Project mainSub manually compiling using CMake

Let's reinstate the environment of compiling problem!

## 1.Problem A

### 1.1Terminal output during compiling

    Makefile:22: *** missing separator.  Stop.

### 1.2Run Or Not

Not.

### 1.3Fix Or Not

Fix.

Just use the vim editor, and replace "`tab`" using four space.

### 1.4May be

With this command your tabs will look like the other ones (i.e. ^I) and *** missing separator.  Stop. error from make will go away :)

### 1.5Other Fix Or Not

New Fixed.

## 2.Problem B

### 2.1Terminal output during compiling

    echo clang++

    clang++

    zsh: no such file or directory: /Users/yq/VSCode/CppProject/mainSub_makefile_tweenVersion//./build/debug/main

### 2.2Run Or Not

Not.

### 2.3Fix Or Not

Fixed.

Remove the functional code to debug Makefile in the `Makefile`.

e.g:

    .PHONY: all all_a all_b

    all:

        echo $(CXX)

### 2.5Other Fix Or Not

Remove debug functional code at Makefile before compiling and outputing.

# Terminal Compile Command

## "c"

    "cd $dir && cd ../build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dir../build/debug/bin/$fileNameWithoutExt"

terminal:

BIG BIG BIG Notice:

You should better cmake and make under the directory of ./build/debug, Or, the

generation of cmake and make will be located at that current directory, and got

warning:

    CMake Warning:
    
    No source or binary directory provided.  Both will be assumed to be the
    same as the current working directory, but note that this warning will
    become a fatal error in future CMake releases.

(When located in ./build/debug/)

    cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 

(When located in ./)

    cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8

Using this code to delete target file(When located in ./):

    cd build && rm -r debug && mkdir debug && cd .. && pwd

Using the below code to tree all the directories and files under the current

directory:

    pwd && ls -al && tree -all

## "cpp"

    "cd $dir && cd ../build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8 && $dir../build/debug/bin/$fileNameWithoutExt"

terminal:

BIG BIG BIG Notice:

You should better cmake and make under the directory of ./build/debug, Or, the

generation of cmake and make will be located at that current directory, and got

warning:

    CMake Warning:
    
    No source or binary directory provided.  Both will be assumed to be the
    same as the current working directory, but note that this warning will
    become a fatal error in future CMake releases.

(When located in ./build/debug/)

    cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8
(When located in ./)

    cd build/debug && cmake -G 'Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug ../.. && make -j 8

Using this code to delete target file(When located in ./):

    cd build && rm -r debug && mkdir debug && cd .. && pwd

Using the below code to tree all the directories and files under the current

directory:

    pwd && ls -al && tree -all

## Questions

How to generate Debug file via Makefile/CMake.

Why my Makefile/CMake did not generate Debug information.

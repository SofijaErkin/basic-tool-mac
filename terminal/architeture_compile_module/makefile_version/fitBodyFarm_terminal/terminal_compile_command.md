# Terminal Compile Command

## "c"

    "cd $dir/../ && make && $dir/../build/$fileNameWithoutExt && make clean"

VSCode:
(When located in ./apps/)

    "cd $dir../ && make && $dir/../build/debug/$fileNameWithoutExt "
terminal:
(When located in ./build/debug/)

    cd $dir../.. && make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

(When located in ./)

    make -j 8 && ./build/debug/main && pwd && ls -al && tree -all 

(When located in ./) using Debug

    make DEBUG=1 -j 8 && ./build/debug/main && pwd && ls -al && tree -all 

Using this code to delete target file:

    cd build && rm -r debug && mkdir debug && cd .. && pwd

## "cpp"

    "cd $dir/../ && make && $dir/../build/$fileNameWithoutExt && make clean"

VSCode:
(When located in ./apps/)

    "cd $dir../ && make && $dir/../build/debug/$fileNameWithoutExt "
terminal:
(When located in ./build/debug/)

    cd $dir../.. && make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

(When located in ./)

    make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

(When located in ./) using Debug

    make DEBUG=1 -j 8 && ./build/debug/main && pwd && ls -al && tree -all 

Using this code to delete target file:

    cd build && rm -r debug && mkdir debug && cd .. && pwd

## Questions

How to generate Debug file via Makefile.

Why my Makefile did not generate Debug information.

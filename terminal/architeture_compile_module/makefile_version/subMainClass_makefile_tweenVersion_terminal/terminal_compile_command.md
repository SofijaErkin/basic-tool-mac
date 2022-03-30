# Terminal Compile Command

## "c"

VSCode:
(When located in ./apps/)

    "cd $dir../ && make && $dir/../build/debug/$fileNameWithoutExt "
terminal:
(When located in ./build/debug/)

    cd $dir../.. && make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

(When located in ./)

    make -j 8 && ./build/debug/main && pwd && ls -al && tree -all 

## "cpp"

VSCode:
(When located in ./apps/)

    "cd $dir../ && make && $dir/../build/debug/$fileNameWithoutExt "
terminal:
(When located in ./build/debug/)

    cd $dir../.. && make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

(When located in ./)

    make -j 8 && ./build/debug/main && pwd && ls -al && tree -all

## Questions

How to generate Debug file via Makefile.

Why my Makefile did not generate Debug information.

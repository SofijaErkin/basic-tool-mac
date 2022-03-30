# Terminal Compile Command

## "c"

VSCode:

    "cd $dir && clang -std=c11 -stdlib=libc++  $dir/*.c  -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt"
terminal:

    clang -std=c++11 -stdlib=libc++ ./apps/*.c -o ./build/debug/main -I./include -Wall -g && pwd && ls -al && ./build/debug/main && pwd && ls -al && tree -all

## "cpp"

VSCode:

    "cd $dir && clang++ -std=c++11 -stdlib=libc++  $dir/*.cpp -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt"
terminal:

    clang++ -std=c++11 -stdlib=libc++ ./apps/*.cpp -o ./build/debug/main -I./include -Wall -g && pwd && ls -al && ./build/debug/main && pwd && ls -al && tree -all

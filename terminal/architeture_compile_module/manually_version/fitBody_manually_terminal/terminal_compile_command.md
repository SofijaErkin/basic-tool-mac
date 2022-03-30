# Terminal Compile Command

## "c"

VSCode:

    "cd $dir && clang -std=c11 -stdlib=libc++  $dir/*.c  -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt"
terminal:

    cd build/debug && clang++ -std=c++11 -stdlib=libc++ ../../src/*.c -o main -I../../inc -Wall -g && pwd && ls -al && ./main && cd ../../ && pwd && ls -al && tree -all

## "cpp"

VSCode:

    "cd $dir && clang++ -std=c++11 -stdlib=libc++  $dir/*.cpp -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt"
terminal:

    cd build/debug && clang++ -std=c++11 -stdlib=libc++ ../../src/*.cpp -o main -I../../inc -Wall -g && pwd && ls -al && ./main && cd ../../ && pwd && ls -al && tree -all

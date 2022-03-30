# Terminal Compile Command

## "c"

VSCode compile command:

    "cd $dir && clang -std=c11 -stdlib=libc++  $dir/*.c  $dir/../common/source/*.c -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt",
terminal compile command:

    cd build/debug && g++ -std=c++ -stdlib=libc++ ../../apps/*.c ../../common/source/*.c -o main -I ../../common/include -Wall -g && pwd && ls -al

## "cpp"

VSCode compile command:

    "cd $dir && clang++ -std=c++11 -stdlib=libc++  $dir/*.cpp  $dir/../common/source/*.cpp -o $dir/../build/debug/$fileNameWithoutExt && $dir/../build/debug/$fileNameWithoutExt"
terminal compile command:

    cd build/debug && g++ -std=c++11 -stdlib=libc++ ../../apps/*.cpp ../../common/source/*.cpp -o main -I ../../common/include -Wall -g && pwd && ls -al

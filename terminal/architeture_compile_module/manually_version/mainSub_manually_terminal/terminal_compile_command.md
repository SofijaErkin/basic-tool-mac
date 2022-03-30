# Terminal Compile Command

## "c"

VSCode:

    "cd $dir && clang -std=c11 -stdlib=libc++  $dir/*.c $dir/./petActive/source/*.c  -o $dir/./build/debug/$fileNameWithoutExt && $dir/./build/debug/$fileNameWithoutExt"
terminal:

    cd build/debug && clang++ -std=c++11 -stdlib=libc++ ../../*.c ../../petActive/source/*.c -o main -I../../petActive/include -Wall -g && pwd && ls -al && ./main && cd ../../ && pwd && ls -al && tree -all

## "cpp"

VSCode:

    "cd $dir && clang++ -std=c++11 -stdlib=libc++  $dir/*.cpp $dir/./petActive/source/*.cpp -o $dir/./build/debug/$fileNameWithoutExt && $dir/./build/debug/$fileNameWithoutExt"
terminal:

    cd build/debug && clang++ -std=c++11 -stdlib=libc++ ../../*.cpp ../../petActive/source/*.cpp -o main -I../../petActive/include -Wall -g && pwd && ls -al && ./main && cd ../../ && pwd && ls -al && tree -all

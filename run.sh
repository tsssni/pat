if [ ! -d "build" ]; then
    mkdir build
fi

src=$1
exe=build/${src%.cpp}

clang++ -DONLINE_JUDGE -O2 -Wall -std=c++17 -pipe -g $src -lm -o $exe
$exe

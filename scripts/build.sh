test_app='tests.c'
test_app_obj=${test_app::-2}.o

flags='-std=c11 -Wall -Wpedantic -Wextra -ggdb -g3 -O0'

[ ! -f "./bin/" ] && mkdir -v ./bin/ 2>/dev/null
[ ! -f "./build/" ] && mkdir -v ./build/ 2>/dev/null
rm -f ./bin/*
rm -f ./build/*

gcc $flags -c ./src/cpu.c -o ./build/cpu.o &&
gcc $flags -c ./tests/$test_app -o ./build/$test_app_obj &&
gcc $flags ./build/cpu.o ./build/$test_app_obj -o ./bin/test


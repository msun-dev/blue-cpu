test_exe=./bin/test
test_file='tests.c'
test_app_obj=${test_file::-2}.o

flags='-std=c11 -Wall -Wpedantic -Wextra -ggdb -g3 -O0'

[ ! -f "./bin/" ] && mkdir -v ./bin/ 2>/dev/null
[ ! -f "./obj/" ] && mkdir -v ./obj/ 2>/dev/null
rm -f ./bin/*
rm -f ./obj/*

gcc $flags -c ./src/cpu.c -o ./obj/cpu.o &&
gcc $flags -c ./tests/$test_file -o ./obj/$test_app_obj &&
gcc $flags ./obj/cpu.o ./obj/$test_app_obj -o $test_exe

$test_exe || echo "Tests failed! Time to debug!"

#!/bin/bash

set -x

PREFIX=~/cross-aarch64-w64-mingw32-msvcrt

$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 vararg-dll.c -S -fverbose-asm -o vararg-dll-gcc.s
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 vararg-use-dll.c -S -fverbose-asm -o vararg-use-dll-gcc.s

$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb vararg-dll.c -c -o vararg-dll-gcc.o
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb vararg-use-dll.c -c -o vararg-use-dll-gcc.o

$PREFIX/bin/aarch64-w64-mingw32-gcc -shared -O0 -ggdb vararg-dll-gcc.o -o vararg-gcc.dll
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb vararg-use-dll-gcc.o -lvararg-gcc -L. -o vararg-gcc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb vararg-use-dll-gcc.o -lvararg-msvc -L. -o vararg-gcc-msvc.exe

set +x

echo "GCC: $(./vararg-gcc.exe; echo $?)"
echo "GCC (MSVC DLL): $(./vararg-gcc-msvc.exe; echo $?)"
#!/bin/bash

set -x

PREFIX=~/cross-aarch64-w64-mingw32-msvcrt

aarch64-linux-gnu-gcc -O0 valist-dll.c -S -fverbose-asm -o valist-dll-linux.s
aarch64-linux-gnu-gcc -O0 valist-use-dll.c -S -fverbose-asm -o valist-use-dll-linux.s

$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 valist-dll.c -S -fverbose-asm -fdump-tree-gimple -o valist-dll-gcc.s
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 valist-use-dll.c -S -fverbose-asm -fdump-tree-gimple -o valist-use-dll-gcc.s

$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-dll.c -c -o valist-dll-gcc.o
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-dll-gcc-fixed.s -c -o valist-dll-gcc-fixed.o
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll.c -c -o valist-use-dll-gcc.o
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc-fixed.s -c -o valist-use-dll-gcc-fixed.o

$PREFIX/bin/aarch64-w64-mingw32-gcc -shared -O0 -ggdb valist-dll-gcc.o -o valist-gcc.dll
$PREFIX/bin/aarch64-w64-mingw32-gcc -shared -O0 -ggdb valist-dll-gcc-fixed.o -o valist-gcc-fixed.dll
$PREFIX/bin/aarch64-w64-mingw32-gcc -shared -O0 -ggdb valist-dll-clang.o -o valist-clang.dll

$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc.o -lvalist-gcc -L. -o valist-gcc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc.o -lvalist-clang -L. -o valist-gcc-clang.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc-fixed.o -lvalist-clang -L. -o valist-gcc-fixed-clang.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc.o -lvalist-msvc -L. -o valist-gcc-msvc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-gcc-fixed.o -lvalist-msvc -L. -o valist-gcc-fixed-msvc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-msvc.obj -lvalist-gcc -L. -o valist-msvc-gcc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-msvc.obj -lvalist-gcc-fixed -L. -o valist-msvc-gcc-fixed.exe

clang --target=aarch64-w64-mingw32 -O0 valist-dll.c -S -fverbose-asm -o valist-dll-clang.s
clang --target=aarch64-w64-mingw32 -O0 valist-use-dll.c -S -fverbose-asm -o valist-use-dll-clang.s

clang --target=aarch64-w64-mingw32 -O0 -ggdb valist-dll.c -c -o valist-dll-clang.o
clang --target=aarch64-w64-mingw32 -O0 -ggdb valist-use-dll.c -c -o valist-use-dll-clang.o

$PREFIX/bin/aarch64-w64-mingw32-gcc -shared -O0 -ggdb valist-dll-clang.o -o valist-clang.dll
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-clang.o -lvalist-clang -L. -o valist-clang.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-clang.o -lvalist-msvc -L. -o valist-clang-msvc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-clang.o -lvalist-gcc -L. -o valist-clang-gcc.exe
$PREFIX/bin/aarch64-w64-mingw32-gcc -O0 -ggdb valist-use-dll-clang.o -lvalist-gcc-fixed -L. -o valist-clang-gcc-fixed.exe

set +x

echo "GCC: $(./valist-gcc.exe; echo $?)"
echo "GCC (MSVC DLL): $(./valist-gcc-msvc.exe; echo $?)"
echo "GCC fixed (MSVC DLL): $(./valist-gcc-fixed-msvc.exe; echo $?)"
echo "GCC (Clang DLL): $(./valist-gcc-clang.exe; echo $?)"
echo "GCC fixed (Clang DLL): $(./valist-gcc-fixed-clang.exe; echo $?)"
echo "MSVC (GCC DLL): $(./valist-msvc-gcc.exe; echo $?)"
echo "MSVC (GCC DLL fixed): $(./valist-msvc-gcc-fixed.exe; echo $?)"
echo "CLANG: $(./valist-clang.exe; echo $?)"
echo "CLANG (MSVC DLL): $(./valist-clang-msvc.exe; echo $?)"
echo "CLANG (GCC DLL): $(./valist-clang-gcc.exe; echo $?)"
echo "CLANG (GCC DLL fixed): $(./valist-clang-gcc-fixed.exe; echo $?)"

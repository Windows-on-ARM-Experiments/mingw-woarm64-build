#!/bin/bash

OLD_PATH=$PATH

PATH="/home/blackhex/cross-x86_64-pc-cygwin-msvcrt/bin:$OLD_PATH"

cp /home/blackhex/cross-x86_64-pc-cygwin-msvcrt/bin/cygwin1.dll cygwin1-x86_64-cygwin.dll

x86_64-pc-cygwin-gcc return-zero.c -g3 -Og -c -o return-zero-x86_64-cygwin.o
x86_64-pc-cygwin-gcc return-zero.c -g3 -Og -S -o return-zero-x86_64-cygwin.S
x86_64-pc-cygwin-gcc return-zero-x86_64-cygwin.o -g3 -Og -o return-zero-x86_64-cygwin.exe
x86_64-pc-cygwin-objdump -S -d return-zero-x86_64-cygwin.exe > return-zero-x86_64-cygwin.objdump
dumpbin.exe /ALL return-zero-x86_64-cygwin.exe > return-zero-x86_64-cygwin.dumpbin
dumpbin.exe /HEADERS cygwin1-x86_64-cygwin.dll > cygwin1-x86_64-cygwin.dumpbin

PATH="/home/blackhex/cross-aarch64-pc-cygwin-msvcrt/bin:$OLD_PATH"

cp /home/blackhex/cross-aarch64-pc-cygwin-msvcrt/bin/cygwin1.dll cygwin1-aarch64-cygwin.dll
cp cygwin1-aarch64-cygwin.dll cygwin1.dll

aarch64-pc-cygwin-gcc return-zero.c -g3 -Og -c -o return-zero-aarch64-cygwin.o
aarch64-pc-cygwin-gcc return-zero.c -g3 -Og -S -o return-zero-aarch64-cygwin.S
aarch64-pc-cygwin-gcc return-zero-aarch64-cygwin.o -g3 -Og -o return-zero-aarch64-cygwin.exe
aarch64-pc-cygwin-objdump -S -d return-zero-aarch64-cygwin.exe > return-zero-aarch64-cygwin.objdump
dumpbin.exe /ALL return-zero-aarch64-cygwin.exe > return-zero-aarch64-cygwin.dumpbin
dumpbin.exe /HEADERS cygwin1-aarch64-cygwin.dll > cygwin1-aarch64-cygwin.dumpbin

PATH="/home/blackhex/cross-aarch64-w64-mingw32-msvcrt/bin:$OLD_PATH"

aarch64-w64-mingw32-gcc return-zero.c -g3 -Og -c -o return-zero-aarch64-mingw.o
aarch64-w64-mingw32-gcc return-zero.c -g3 -Og -S -o return-zero-aarch64-mingw.S
aarch64-w64-mingw32-gcc return-zero-aarch64-mingw.o -g3 -Og -o return-zero-aarch64-mingw.exe
aarch64-w64-mingw32-objdump -S -d return-zero-aarch64-mingw.exe > return-zero-aarch64-mingw.objdump
dumpbin.exe /ALL return-zero-aarch64-mingw.exe > return-zero-aarch64-mingw.dumpbin
dumpbin.exe /HEADERS libwinpthread-1.dll > libwinpthread-1-aarch64-mingw.dumpbin
~/cross/bin/aarch64-w64-mingw32-g++ -S test.cpp -o test.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S hello.cpp -o hello.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S hello.c -o hello.c.s -fdump-final-insns

~/cross/bin/aarch64-w64-mingw32-g++ test.cpp -o test.cpp.exe
~/cross/bin/aarch64-w64-mingw32-g++ hello.cpp -o hello.cpp.exe
~/cross/bin/aarch64-w64-mingw32-gcc hello.c -o hello.c.exe


~/cross/bin/aarch64-w64-mingw32-g++ -S test-bigstack.cpp -o test-bigstack.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S test-throw.cpp -o test-throw.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S hello.cpp -o hello.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S hello.c -o hello.c.s -fdump-final-insns

~/cross/bin/aarch64-w64-mingw32-g++ test-bigstack.cpp -o test-bigstack.exe
~/cross/bin/aarch64-w64-mingw32-g++ test-throw.cpp -o test-throw.exe
~/cross/bin/aarch64-w64-mingw32-g++ hello.cpp -o hello.cpp.exe
~/cross/bin/aarch64-w64-mingw32-gcc hello.c -o hello.c.exe


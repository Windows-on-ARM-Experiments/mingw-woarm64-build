rm *.s *.dump *.gkd *.exe *.dll *.log

~/cross/bin/aarch64-w64-mingw32-g++ -S test-bigstack.cpp -o test-bigstack.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S test-throw.cpp -o test-throw.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S hello.cpp -o hello.cpp.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S hello.c -o hello.c.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S test-pdata.c -o test-pdata.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S bigstatic.c -o bigstatic.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S test-struct.c -o test-struct.s -fdump-final-insns

~/cross/bin/aarch64-w64-mingw32-g++ -g test-bigstack.cpp -o test-bigstack.exe >> test-bigstack.log
~/cross/bin/aarch64-w64-mingw32-g++ -g test-throw.cpp -o test-throw.exe >> test-throw.log
~/cross/bin/aarch64-w64-mingw32-g++ -g hello.cpp -o hello.cpp.exe >> hello.cpp.log
~/cross/bin/aarch64-w64-mingw32-gcc -g hello.c -o hello.c.exe >> hello.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-pdata.c -ldbghelp -o test-pdata.exe >> test-pdata.log
~/cross/bin/aarch64-w64-mingw32-gcc -g bigstatic.c -o bigstatic.exe >> bigstatic.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-struct.c -o test-struct.exe >> test-struct.log

#
# DLL examples 
#

~/cross/bin/aarch64-w64-mingw32-gcc  -g -DEXPORT_API="__declspec(dllexport)" -o dll-export.dll -s -shared dll.c -Wl,--subsystem,windows
~/cross/bin/aarch64-w64-mingw32-gcc -g -DEXPORT_API= -o dll-auto.dll -s -shared dll.c -Wl,--subsystem,windows,--out-implib,libdll-exportlib.a
~/cross/bin/aarch64-w64-mingw32-dlltool -k --output-lib libdll-def.a --def dll.def

~/cross/bin/aarch64-w64-mingw32-gcc -g -DIMPORT_API="__declspec(dllimport)" -o test-dll-export.exe -s test-dll.c -L. -ldll-export -fdump-final-insns > test-dll-export.log
~/cross/bin/aarch64-w64-mingw32-gcc -g -DIMPORT_API= -o test-dll-auto.exe -s test-dll.c -L. -ldll-auto -fdump-final-insns > test-dll-auto.log
~/cross/bin/aarch64-w64-mingw32-gcc -g -DIMPORT_API= -o test-dll-def.exe -s test-dll.c -L. -ldll-def -fdump-final-insns > test-dll-def.log

#
# Dump some EXE's for inspection
#

~/cross/bin/aarch64-w64-mingw32-objdump -dr test-bigstack.exe >> test-bigstack.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr bigstatic.exe >> bigstack.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-throw.exe >> test-throw.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-dll-auto.exe >> test-dll-auto.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-struct.exe >> test-struct.dump



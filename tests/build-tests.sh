rm -f *.s *.dump *.gkd *.exe *.dll *.log

~/cross/bin/aarch64-w64-mingw32-g++ -S test-bigdata.cpp -o test-bigdata.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S test-throw.cpp -o test-throw.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-g++ -S test-iostream.cpp -o test-iostream.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S test-math.c -o test-math.c.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S test-pdata.c -o test-pdata.c.s -fdump-final-insns
~/cross/bin/aarch64-w64-mingw32-gcc -S test-struct.c -o test-struct.c.s -fdump-final-insns

~/cross/bin/aarch64-w64-mingw32-g++ -g test-bigdata.cpp -o test-bigdata.exe >> test-bigdata.log
~/cross/bin/aarch64-w64-mingw32-g++ -g test-throw.cpp -o test-throw.exe >> test-throw.log
~/cross/bin/aarch64-w64-mingw32-g++ -g test-iostream.cpp -o test-iostream.exe >> test-iostream.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-math.c -o test-math.c.exe >> test-math.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-pdata.c -ldbghelp -o test-pdata.c.exe >> test-pdata.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-struct.c -o test-struct.c.exe >> test-struct.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-varargs.c -o test-varargs.c.exe >> test-varargs.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g test-sjlj.c -o test-sjlj.c.exe >> test-sjlj.c.log
~/cross/bin/aarch64-w64-mingw32-gcc -g -fopenmp test-omp.c -o test-omp.c.exe >> test-omp.c.log

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

~/cross/bin/aarch64-w64-mingw32-objdump -dr test-bigdata.exe >> test-bigdata.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-throw.exe >> test-throw.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-dll-auto.exe >> test-dll-auto.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-dll-export.exe >> test-dll-export.dump
~/cross/bin/aarch64-w64-mingw32-objdump -dr test-struct.c.exe >> test-struct.c.dump



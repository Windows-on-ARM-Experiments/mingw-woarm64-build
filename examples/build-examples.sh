rm *.s *.dump *.gkd *.exe *.dll *.log

PREFIX=~/cross/bin
TARGET=aarch64-w64-mingw32

CC=$PREFIX/$TARGET-gcc
CXX=$PREFIX/$TARGET-g++
DLTOOL=$PREFIX/$TARGET-dlltool
OBJDUMP=$PREFIX/$TARGET-objdump

$CXX -S test-bigdata.cpp -o test-bigdata.s -fdump-final-insns
$CXX -S test-throw.cpp -o test-throw.s -fdump-final-insns
$CXX -S test-iostream.cpp -o test-iostream.cpp.s -fdump-final-insns
$CC -S test-math.c -o test-math.c.s -fdump-final-insns
$CC -S test-pdata.c -o test-pdata.s -fdump-final-insns
$CC -S test-struct.c -o test-struct.s -fdump-final-insns

$CXX -g test-bigdata.cpp -o test-bigdata.exe >> test-bigdata.log
$CXX -g test-throw.cpp -o test-throw.exe >> test-throw.log
$CXX -g test-iostream.cpp -o test-iostream.exe >> test-iostream.log
$CC -g test-math.c -o test-math.c.exe >> test-math.c.log
$CC -g test-pdata.c -ldbghelp -o test-pdata.exe >> test-pdata.log
$CC -g test-struct.c -o test-struct.exe >> test-struct.log
$CC -g test-math.c -o test-math.exe >> test-math.log
$CC -g test-varargs.c -o test-varargs.exe >> test-varargs.log
$CC -g test-sjlj.c -o test-sjlj.exe >> test-sjlj.log
$CC -g -fopenmp test-omp.c -o test-omp.exe >> test-omp.log

#
# DLL examples
#

$CC  -g -DEXPORT_API="__declspec(dllexport)" -o dll-export.dll -s -shared dll.c -Wl,--subsystem,windows
$CC -g -DEXPORT_API= -o dll-auto.dll -s -shared dll.c -Wl,--subsystem,windows,--out-implib,libdll-exportlib.a
$DLTOOL -k --output-lib libdll-def.a --def dll.def

$CC -g -DIMPORT_API="__declspec(dllimport)" -o test-dll-export.exe -s test-dll.c -L. -ldll-export -fdump-final-insns > test-dll-export.log
$CC -g -DIMPORT_API= -o test-dll-auto.exe -s test-dll.c -L. -ldll-auto -fdump-final-insns > test-dll-auto.log
$CC -g -DIMPORT_API= -o test-dll-def.exe -s test-dll.c -L. -ldll-def -fdump-final-insns > test-dll-def.log

#
# Dump some EXE's for inspection
#

$OBJDUMP -dr test-bigdata.exe >> test-bigdata.dump
$OBJDUMP -dr test-throw.exe >> test-throw.dump
$OBJDUMP -dr test-dll-auto.exe >> test-dll-auto.dump
$OBJDUMP -dr test-dll-export.exe >> test-dll-export.dump
$OBJDUMP -dr test-struct.exe >> test-struct.dump

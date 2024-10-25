#!/bin/bash

set -e # exit on error
set -x # echo on

NAME=${1:-reloc}
TARGET=aarch64-w64-mingw32
PREFIX=~/cross-$TARGET-ucrt

GCC_INCLUDE_DIR=$PREFIX/lib/gcc/$TARGET/15.0.0/include
GCC_LIB_DIR=$PREFIX/lib/gcc/$TARGET/lib

rm -f *.bin *.cod *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so

GCC=${GCC:-1}
MSVC=${MSVC:-1}
LINK=${LINK:-1}

case "$TARGET" in
        x86_64-w64-mingw32)
                MSVC_ARCH=x64
                ;;
        aarch64-w64-mingw32)
                MSVC_ARCH=arm64
                ;;
esac

# Assembly

if [ $GCC = 1 ] ; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-dll.c -S -fverbose-asm -fdump-tree-gimple -o $NAME-dll-gcc.s
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll.c -S -fverbose-asm -fdump-tree-gimple -o $NAME-use-dll-gcc.s
fi

# Compile objects

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-dll.c -c -o $NAME-dll-gcc.o
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-gcc.o
fi

if [ $MSVC = 1 ]; then
        cmd.exe /c `wslpath -w compile.bat` `wslpath -w $PWD` $NAME $MSVC_ARCH
fi

# Link DLLs

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-gcc.o -o $NAME-dll-gcc.dll
        $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-gcc.lib --dllname $NAME-dll-gcc.dll --def $NAME-dll-msvc.def -k
fi

if [ $MSVC = 1 ]; then
        if [ $LINK = 1 ]; then
                cmd.exe /c `wslpath -w link-dll.bat` `wslpath -w $PWD` $NAME $MSVC_ARCH
        else
                $PREFIX/bin/$TARGET-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-msvc.obj -o $NAME-dll-msvc.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-msvc.lib --dllname $NAME-dll-msvc.dll --def $NAME-dll-msvc.def -k
        fi
fi

# Link executables

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc.o -l$NAME-dll-gcc -L. -o $NAME-gcc.exe
        if [ $MSVC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc $NAME-use-dll-gcc.o -l$NAME-dll-msvc -L. -o $NAME-gcc-msvc.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-dll-msvc -L. -o $NAME-gcc-fixed-msvc.exe
                fi
        fi
fi

if [ $MSVC = 1 ]; then
        if [ $LINK = 1 ]; then
                cmd.exe /c `wslpath -w link-exe.bat` `wslpath -w $PWD` $NAME $MSVC_ARCH
        else
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-dll-msvc -L. -o $NAME-msvc.exe
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-dll-gcc -L. -o $NAME-msvc-gcc.exe
        fi
fi

run () {
        echo -e "$1:\n"
        eval $2
        echo -e "\tresult: $?"
}

set +x
set +e

chmod +x *.exe *.bin

if [ $GCC = 1 ]; then
        run "GCC" ./$NAME-gcc.exe
        if [ $MSVC = 1 ]; then
                run "GCC (MSVC DLL)" ./$NAME-gcc-msvc.exe
        fi
fi
if [ $MSVC = 1 ]; then
        run "MSVC" ./$NAME-msvc.exe
        if [ $GCC = 1 ]; then
                run "MSVC (GCC DLL)" ./$NAME-msvc-gcc.exe
        fi
fi

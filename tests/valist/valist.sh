#!/bin/bash

set -e # exit on error
set -x # echo on
set -o pipefail # fail of any command in pipeline is an error

NAME=${1:-valist}
TARGET=aarch64-w64-mingw32
PREFIX=~/cross-$TARGET-ucrt

DEBUG_DIR=/mnt/c/Projects/$NAME

GCC_INCLUDE_DIR=$PREFIX/lib/gcc/$TARGET/15.0.0/include
GCC_LIB_DIR=$PREFIX/lib/gcc/$TARGET/lib

CLANG_INCLUDE_DIR=$PREFIX/$TARGET/include
CLANG_LIB_DIR=$PREFIX/$TARGET/lib

rm -f *.bin *.cod *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so

LINUX=${LINUX:-0}
GCC=${GCC:-1}
MSVC=${MSVC:-1}
LINK=${LINK:-0}
CLANG=${CLANG:-0}
LLD=${LLD:-0}

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

if [ $CLANG = 1 ]; then
        clang --target=$TARGET -nostdinc -Wno-format -I$GCC_INCLUDE_DIR -I$CLANG_INCLUDE_DIR -O0 $NAME-dll.c -S -fverbose-asm -o $NAME-dll-clang.s
        clang --target=$TARGET -nostdinc -Wno-format -I$GCC_INCLUDE_DIR -I$CLANG_INCLUDE_DIR -O0 $NAME-use-dll.c -S -fverbose-asm -o $NAME-use-dll-clang.s
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -O0 $NAME-dll.c -S -fverbose-asm -o $NAME-dll-linux.s
        aarch64-linux-gnu-gcc -O0 $NAME-use-dll.c -S -fverbose-asm -o $NAME-use-dll-linux.s
fi

# Compile objects

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-dll.c -c -o $NAME-dll-gcc.o
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-gcc.o
        if [ -f $NAME-dll-gcc-fixed.s ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-dll-gcc-fixed.s -c -o $NAME-dll-gcc-fixed.o
        fi
        if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.s -c -o $NAME-use-dll-gcc-fixed.o
        fi
fi

if [ $CLANG = 1 ]; then
        clang --target=$TARGET -nostdinc -Wno-format -I$GCC_INCLUDE_DIR -I$CLANG_INCLUDE_DIR -O0 -ggdb $NAME-dll.c -c -o $NAME-dll-clang.o
        clang --target=$TARGET -nostdinc -Wno-format -I$GCC_INCLUDE_DIR -I$CLANG_INCLUDE_DIR -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-clang.o
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -O0 -ggdb -fPIC $NAME-dll.c -c -o $NAME-dll-linux.o
        aarch64-linux-gnu-gcc -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-linux.o
fi

if [ $MSVC = 1 ]; then
        cmd.exe /c `wslpath -w compile.bat` `wslpath -w $PWD` $NAME $MSVC_ARCH
fi

# Link DLLs

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-gcc.o -o $NAME-dll-gcc.dll
        $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-gcc.lib --dllname $NAME-dll-gcc.dll --def $NAME-dll-msvc.def -k
        if [ -f $NAME-dll-gcc-fixed.s ]; then
                $PREFIX/bin/$TARGET-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-gcc-fixed.o -o $NAME-dll-gcc-fixed.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-gcc-fixed.lib --dllname $NAME-dll-gcc-fixed.dll --def $NAME-dll-msvc.def -k
        fi
fi

if [ $CLANG = 1 ]; then
        if [ $LLD = 1 ]; then
                lld-link /INCREMENTAL:NO /DLL /DEBUG /LIBPATH:sdk/$TARGET /DEFAULTLIB:libcmt /DEF:$NAME-dll-msvc.def /OUT:$NAME-dll-clang.dll /IMPLIB:$NAME-dll-clang.lib $NAME-dll-clang.o
        else
                $PREFIX/bin/$TARGET-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-clang.o -o $NAME-dll-clang.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-clang.lib --dllname $NAME-dll-clang.dll --def $NAME-dll-msvc.def -k
        fi
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -shared -L$GCC_LIB_DIR -O0 -ggdb $NAME-dll-linux.o -o lib$NAME-linux.so
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
        if [ -f $NAME-use-dll-gcc-fixed.s ] || [ -f $NAME-dll-gcc-fixed.s ]; then
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-dll-gcc-fixed -L. -o $NAME-gcc-fixed.exe
                else
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc.o -l$NAME-dll-gcc-fixed -L. -o $NAME-gcc-fixed.exe
                fi
        fi
        if [ $CLANG = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc.o -l$NAME-dll-clang -L. -o $NAME-gcc-clang.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-dll-clang -L. -o $NAME-gcc-fixed-clang.exe
                fi
        fi
        if [ $MSVC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc $NAME-use-dll-gcc.o -l$NAME-dll-msvc -L. -o $NAME-gcc-msvc.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-dll-msvc -L. -o $NAME-gcc-fixed-msvc.exe
                fi
        fi
fi

if [ $CLANG = 1 ]; then
        if [ $LLD = 1 ]; then
                lld-link /INCREMENTAL:NO /DEBUG /LIBPATH:sdk/$TARGET /DEFAULTLIB:libcmt /OUT:$NAME-clang.exe $NAME-use-dll-clang.o $NAME-dll-clang.lib
        else
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-dll-clang -L. -o $NAME-clang.exe
        fi
        if [ $GCC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-dll-gcc -L. -o $NAME-clang-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        if [ $LLD = 1 ]; then
                                lld-link /INCREMENTAL:NO /DEBUG /LIBPATH:sdk/$TARGET /DEFAULTLIB:libcmt /OUT:$NAME-clang-gcc-fixed.exe $NAME-use-dll-clang.o $NAME-dll-gcc-fixed.lib
                        else
                                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-dll-gcc-fixed -L. -o $NAME-clang-gcc-fixed.exe
                        fi
                fi
        fi
        if [ $MSVC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-dll-msvc -L. -o $NAME-clang-msvc.exe
        fi
fi

if [ $MSVC = 1 ]; then
        if [ $LINK = 1 ]; then
                cmd.exe /c `wslpath -w link-exe.bat` `wslpath -w $PWD` $NAME $MSVC_ARCH
        else
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-dll-msvc -L. -o $NAME-msvc.exe
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-dll-gcc -L. -o $NAME-msvc-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-dll-gcc-fixed -L. -o $NAME-msvc-gcc-fixed.exe
                fi
        fi
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -O0 -ggdb $NAME-use-dll-linux.o -l$NAME-dll-linux -L. -o $NAME-linux.bin
fi

mkdir -p $DEBUG_DIR
rm -rf $DEBUG_DIR/*

cp $NAME-dll.c $NAME-use-dll.c $DEBUG_DIR
if [ $GCC = 1 ]; then
        cp $NAME-dll-gcc.dll $NAME-gcc.exe $DEBUG_DIR
        if [ -f $NAME-use-dll-gcc-fixed.s ] || [ -f $NAME-dll-gcc-fixed.s ]; then
                cp $NAME-gcc-fixed.exe $DEBUG_DIR
        fi
        if  [ -f $NAME-dll-gcc-fixed.s ]; then
                cp $NAME-dll-gcc-fixed.dll $DEBUG_DIR
        fi
fi
if [ $MSVC = 1 ]; then
        cp $NAME-dll-msvc.dll $NAME-msvc.exe $DEBUG_DIR
        if [ -f $NAME-use-dll-gcc-fixed.s ]; then
              cp $NAME-gcc-fixed-msvc.exe $DEBUG_DIR
        fi
        if [ -f $NAME-dll-gcc-fixed.s ]; then
              cp $NAME-msvc-gcc-fixed.exe $DEBUG_DIR
        fi
        if [ $LINK = 1 ]; then
                cp $NAME-dll-msvc.pdb $DEBUG_DIR
        fi
fi
if [ $GCC = 1 ] && [ $MSVC = 1 ]; then
        cp $NAME-gcc-msvc.exe $DEBUG_DIR
fi

run () {
        echo -e "$1:\n"
        eval $2
        echo -e "\tresult: $?"
}

set +x
set +e

chmod +x *.exe *.bin

if [ $LINUX = 1 ]; then
        run "Linux" "LD_LIBRARY_PATH=. ./$NAME-linux.bin"
fi
if [ $GCC = 1 ]; then
        run "GCC" ./$NAME-gcc.exe
        if [ -f $NAME-use-dll-gcc-fixed.s ] || [ -f $NAME-dll-gcc-fixed.s ]; then
                run "GCC fixed" ./$NAME-gcc-fixed.exe
        fi
        if [ $MSVC = 1 ]; then
                run "GCC (MSVC DLL)" ./$NAME-gcc-msvc.exe
                if [ -f $NAME-use-gcc-fixed.s ]; then
                        run "GCC fixed (MSVC DLL)" ./$NAME-gcc-fixed-msvc.exe
                fi
        fi
        if [ $CLANG = 1 ]; then
                run "GCC (Clang DLL)" ./$NAME-gcc-clang.exe
                if [ -f $NAME-use-gcc-fixed.s ]; then
                        run "GCC fixed (Clang DLL)" ./$NAME-gcc-fixed-clang.exe
                fi
        fi
fi
if [ $MSVC = 1 ]; then
        run "MSVC" ./$NAME-msvc.exe
        if [ $GCC = 1 ]; then
                run "MSVC (GCC DLL)" ./$NAME-msvc-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        run "MSVC (GCC DLL fixed)" ./$NAME-msvc-gcc-fixed.exe
                fi
        fi
fi
if [ $CLANG = 1 ]; then
        run "CLANG" ./$NAME-clang.exe
        if [ $MSVC = 1 ]; then
                run "CLANG (MSVC DLL)" ./$NAME-clang-msvc.exe
        fi
        if [ $GCC = 1 ]; then
                run "CLANG (GCC DLL)" ./$NAME-clang-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        run "CLANG (GCC DLL fixed)" ./$NAME-clang-gcc-fixed.exe
                fi
        fi
fi

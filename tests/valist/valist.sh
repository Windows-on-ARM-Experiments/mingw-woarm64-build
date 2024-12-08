#!/bin/bash

set -e # exit on error
set -x # echo on

NAME=${1:-valist}
TARGET=aarch64-w64-mingw32
PREFIX=~/cross-$TARGET-ucrt
INCLUDE_DIR=$PREFIX/$TARGET/include
LIB_DIR=$PREFIX/$TARGET/lib

rm -f *.bin *.cod *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so

LINUX=${LINUX:-0}
GCC=${GCC:-1}
MSVC=${MSVC:-1}
LINK=${LINK:-1}
CLANG=${CLANG:-0}
LLD=${LLD:-0}

# Assembly

if [ $GCC = 1 ] ; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-dll.c -S -fverbose-asm -fdump-tree-gimple -o $NAME-dll-gcc.s
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll.c -S -fverbose-asm -fdump-tree-gimple -o $NAME-use-dll-gcc.s
fi

if [ $CLANG = 1 ]; then
        clang --target=$TARGET -nostdinc -Wno-format -I$INCLUDE_DIR -O0 $NAME-dll.c -S -fverbose-asm -o $NAME-dll-clang.s
        clang --target=$TARGET -nostdinc -Wno-format -I$INCLUDE_DIR -O0 $NAME-use-dll.c -S -fverbose-asm -o $NAME-use-dll-clang.s
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
        clang --target=$TARGET -nostdinc -Wno-format -I$INCLUDE_DIR -O0 -ggdb $NAME-dll.c -c -o $NAME-dll-clang.o
        clang --target=$TARGET -nostdinc -Wno-format -I$INCLUDE_DIR -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-clang.o
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -O0 -ggdb -fPIC $NAME-dll.c -c -o $NAME-dll-linux.o
        aarch64-linux-gnu-gcc -O0 -ggdb $NAME-use-dll.c -c -o $NAME-use-dll-linux.o
fi

if [ $MSVC = 1 ]; then
        cmd.exe /c `wslpath -w valist-compile.bat` `wslpath -w $PWD` $NAME
fi

# Link DLLs

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -shared -O0 -ggdb $NAME-dll-gcc.o -o $NAME-gcc.dll
        $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-gcc.lib --dllname $NAME-gcc.dll --def $NAME-dll.def -k
        if [ -f $NAME-dll-gcc-fixed.s ]; then
                $PREFIX/bin/$TARGET-gcc -shared -O0 -ggdb $NAME-dll-gcc-fixed.o -o $NAME-gcc-fixed.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-dll-gcc-fixed.lib --dllname $NAME-gcc-fixed.dll --def $NAME-dll.def -k
        fi
fi

if [ $CLANG = 1 ]; then
        if [ $LLD = 1 ]; then
                lld-link /INCREMENTAL:NO /DLL /DEBUG /LIBPATH:sdk /DEFAULTLIB:libcmt  /OUT:$NAME-clang.dll /IMPLIB:$NAME-dll-clang.lib $NAME-dll-clang.o
        else
                $PREFIX/bin/$TARGET-gcc -shared -O0 -ggdb $NAME-dll-clang.o -o $NAME-clang.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-clang.lib --dllname $NAME-clang.dll --def $NAME-dll.def -k
        fi
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -shared -O0 -ggdb $NAME-dll-linux.o -o lib$NAME-linux.so
fi

if [ $MSVC = 1 ]; then
        if [ $LINK = 1 ]; then
                cmd.exe /c `wslpath -w valist-link-dll.bat` `wslpath -w $PWD` $NAME
        else
                $PREFIX/bin/$TARGET-gcc -shared -O0 -ggdb $NAME-dll-msvc.obj -o $NAME-msvc.dll
                $PREFIX/bin/$TARGET-dlltool -l $NAME-msvc.lib --dllname $NAME-msvc.dll --def $NAME-dll.def -k
        fi
fi

# Link executables

if [ $GCC = 1 ]; then
        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc.o -l$NAME-gcc -L. -o $NAME-gcc.exe
        if [ -f $NAME-use-dll-gcc-fixed.s ] && [ -f $NAME-dll-gcc-fixed.s ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-gcc-fixed -L. -o $NAME-gcc-fixed.exe
        fi
        if [ $CLANG = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc.o -l$NAME-clang -L. -o $NAME-gcc-clang.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-clang -L. -o $NAME-gcc-fixed-clang.exe
                fi
        fi
        if [ $MSVC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc $NAME-use-dll-gcc.o -l$NAME-msvc -L. -o $NAME-gcc-msvc.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-gcc-fixed.o -l$NAME-msvc -L. -o $NAME-gcc-fixed-msvc.exe
                fi
        fi
fi

if [ $CLANG = 1 ]; then
        if [ $LLD = 1 ]; then
                lld-link /INCREMENTAL:NO /DEBUG /LIBPATH:sdk /DEFAULTLIB:libcmt /OUT:$NAME-clang.exe $NAME-use-dll-clang.o $NAME-dll-clang.lib
                #clang --target=aarch64-w64-windows-msvc -fuse-ld=lld-link -nostdlib -Lsdk -L$LIB_DIR -L. -llibcmt -l$NAME-dll-clang $NAME-use-dll-clang.o -o $NAME-clang.exe
        else
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-clang -L. -o $NAME-clang.exe
        fi
        if [ $GCC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-gcc -L. -o v$NAME-clang-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        if [ $LLD = 1 ]; then
                                lld-link /INCREMENTAL:NO /DEBUG /LIBPATH:sdk /DEFAULTLIB:libcmt /OUT:$NAME-clang-gcc-fixed.exe $NAME-use-dll-clang.o $NAME-dll-gcc-fixed.lib
                        else
                                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-gcc-fixed -L. -o $NAME-clang-gcc-fixed.exe
                        fi
                fi
        fi
        if [ $MSVC = 1 ]; then
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-clang.o -l$NAME-msvc -L. -o $NAME-clang-msvc.exe
        fi
fi

if [ $MSVC = 1 ]; then
        if [ $LINK = 1 ]; then
                cmd.exe /c `wslpath -w valist-link-exe.bat` `wslpath -w $PWD` $NAME
        else
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-msvc -L. -o $NAME-msvc.exe
                $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-gcc -L. -o $NAME-msvc-gcc.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        $PREFIX/bin/$TARGET-gcc -O0 -ggdb $NAME-use-dll-msvc.obj -l$NAME-gcc-fixed -L. -o $NAME-msvc-gcc-fixed.exe
                fi
        fi
fi

if [ $LINUX = 1 ]; then
        aarch64-linux-gnu-gcc -O0 -ggdb $NAME-use-dll-linux.o -l$NAME-linux -L. -o $NAME-linux.bin
fi

cp $NAME-dll.c $NAME-use-dll.c $NAME-msvc.dll $NAME-gcc-msvc.exe /mnt/c/Projects/$NAME/

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
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
                        run "GCC fixed (MSVC DLL)" ./$NAME-gcc-fixed-msvc.exe
                fi
        fi
        if [ $CLANG = 1 ]; then
                run "GCC (Clang DLL)" ./$NAME-gcc-clang.exe
                if [ -f $NAME-use-dll-gcc-fixed.s ]; then
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
                run "CLANG (GCC DLL)"./$NAME-clang-gcc.exe
                if [ -f $NAME-dll-gcc-fixed.s ]; then
                        run "CLANG (GCC DLL fixed)" ./$NAME-clang-gcc-fixed.exe
                fi
        fi
fi

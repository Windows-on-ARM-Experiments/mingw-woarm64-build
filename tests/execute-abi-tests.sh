#!/bin/bash

DIRNAME=`dirname ${BASH_SOURCE[0]}`
source $DIRNAME/../.github/scripts/config.sh

DIR=$1
NAME=${2:-$(basename $DIR)}

SCRIPT_DIR=`realpath --relative-to=$DIR $DIRNAME`

INCLUDE_DIR=$TOOLCHAIN_PATH/$TARGET/include
INTERNAL_INCLUDE_DIR=$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/include

LIB_DIR=$TOOLCHAIN_PATH/$TARGET/lib
INTERNAL_LIB_DIR_1=$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION
INTERNAL_LIB_DIR_2=$TOOLCHAIN_PATH/lib/gcc/$TARGET/lib/

GENERATED_FILES="*.bin *.cod *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so"

LINUX=${LINUX:-0}
GCC=${GCC:-1}
MSVC=${MSVC:-0}
LINK=${LINK:-0}
CLANG=${CLANG:-1}
LLD=${LLD:-1}

case "$ARCH" in
x86_64)
    MSVC_ARCH=x64
    ;;
aarch64)
    MSVC_ARCH=arm64
    ;;
esac

FLAGS="$FLAGS $([ $GCC = 1 ] && echo '-DGCC') \
	$([ $MSVC = 1 ] && echo '-DMSVC') \
	$([ $LINK = 1 ] && echo '-DLINK') \
	$([ $CLANG = 1 ] && echo '-DCLANG') \
	$([ $LLD = 1 ] && echo '-DLLD')"
AFLAGS="$FLAGS -O0"
CFLAGS="$FLAGS -O0 -ggdb"
LDFLAGS="-L$LIB_DIR -L$INTERNAL_LIB_DIR_1 -L$INTERNAL_LIB_DIR_2"
CLANG_CFLAGS="-Wno-format -I$INTERNAL_INCLUDE_DIR -I$INCLUDE_DIR"

aflags() {
    local suffix=$1

    case $suffix in
    clang)
        echo "$AFLAGS $CLANG_CFLAGS"
        ;;
    *)
        echo "$AFLAGS"
        ;;
    esac
}

cflags() {
    local suffix=$1

    case $suffix in
    clang)
        echo "$CFLAGS $CLANG_CFLAGS"
        ;;
    linux)
        echo "$CFLAGS -fPIC"
        ;;
    *)
        echo "$CFLAGS"
        ;;
    esac
}

ldflags() {
    local suffix=$1

    case $suffix in
    linux)
        echo "-fPIC"
        ;;
    *)
        echo "$LDFLAGS"
        ;;
    esac
}

assemble() {
    local suffix=$1
    local file=$2
    local flags=$(aflags $suffix)
    case $suffix in
    linux)
        aarch64-linux-gnu-gcc $flags $file -S -fverbose-asm -o ${file%.c}-$suffix.s
        ;;
    clang)
        clang --target=$TARGET $flags $file -S -fverbose-asm -o ${file%.c}-$suffix.s
        ;;
    msvc)
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-assemble.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
        ;;
    *)
        $TOOLCHAIN_PATH/bin/$TARGET-gcc $flags $file -S -fverbose-asm -o ${file%.c}-$suffix.s
        ;;
    esac
}

compile() {
    local suffix=$1
    local file=$2
    local flags=$(cflags $suffix)
    case $suffix in
    linux)
        aarch64-linux-gnu-gcc $flags $file -c -o ${file%.c}-$suffix.o
        ;;
    clang)
        clang --target=$TARGET $flags $file -c -o ${file%.c}-$suffix.o
        ;;
    msvc)
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-compile.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
        ;;
    *)
        $TOOLCHAIN_PATH/bin/$TARGET-gcc $flags $file -c -o ${file%.c}-$suffix.o
        ;;
    esac
}

link_dll() {
    local suffix=$1
    local linker
    local flags=$(ldflags $suffix)
    local obj_ext
    local dll_prefix
    local dll_ext

    case $suffix in
    linux)
        linker=gcc
        obj_ext=o
        dll_prefix=lib
        dll_ext=so
        ;;
    gcc)
        linker=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        flags="$flags -Wl,--out-implib=$NAME-dll-$suffix.lib -Wl,--export-all-symbols"
        obj_ext=o
        dll_ext=dll
        ;;
    clang)
        if [ $LLD = 1 ]; then
            linker="clang -fuse-ld=lld --target=$TARGET"
        else
            linker=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        fi
        obj_ext=o
        dll_ext=dll
        ;;
    msvc)
        linker=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        flags="$flags -Wl,--out-implib=$NAME-dll-$suffix.lib -Wl,--export-all-symbols"
        obj_ext=obj
        dll_ext=dll
        ;;
    esac

    if [ $suffix = "msvc" ] && [ $LINK = 1 ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-link-dll.bat) $(wslpath -w $PWD) $NAME $suffix $MSVC_ARCH
    else
        $linker $flags -shared $NAME-dll-$suffix.$obj_ext -o $dll_prefix$NAME-dll-$suffix.$dll_ext
    fi
}

link_exe() {
    local exe_suffix=$1
    local dll_suffix=$2
    local compiler
    local flags=$(ldflags $exe_suffix)
    local obj_ext

    case $exe_suffix in
    linux)
        compiler=gcc
        obj_ext=o
        exe_ext=bin
        ;;
    gcc)
        compiler=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        obj_ext=o
        exe_ext=exe
        ;;
    clang)
        if [ $LLD = 1 ]; then
            compiler="clang -fuse-ld=lld --target=$TARGET"
        else
            compiler=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        fi
        obj_ext=o
        exe_ext=exe
        ;;
    msvc)
        compiler=$TOOLCHAIN_PATH/bin/$TARGET-gcc
        obj_ext=obj
        exe_ext=exe
        ;;
    esac

    if [ $exe_suffix = "msvc" ] && [ $LINK = 1 ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-link-exe.bat) $(wslpath -w $PWD) $NAME $exe_suffix $dll_suffix $MSVC_ARCH
    else
        $compiler $flags $NAME-use-dll-$exe_suffix.$obj_ext -l$NAME-dll-$dll_suffix -L. -o $NAME-$exe_suffix-$dll_suffix.$exe_ext
    fi
}

run() {
    echo -e "$1:\n"
    eval $2
    echo -e "\tresult: $?"
}

cd $DIR
rm -f $GENERATED_FILES

# Assembly
if [ $LINUX = 1 ]; then
    assemble "linux" "$NAME-dll.c"
    assemble "linux" "$NAME-use-dll.c"
fi

if [ $GCC = 1 ]; then
    assemble "gcc" "$NAME-dll.c"
    assemble "gcc" "$NAME-use-dll.c"
fi

if [ $CLANG = 1 ]; then
    assemble "clang" "$NAME-dll.c"
    assemble "clang" "$NAME-use-dll.c"
fi

if [ $MSVC = 1 ]; then
    assemble "msvc" "$NAME-dll.c"
    assemble "msvc" "$NAME-use-dll.c"
fi

# Compile objects
if [ $LINUX = 1 ]; then
    compile "linux" "$NAME-dll.c"
    compile "linux" "$NAME-use-dll.c"
fi

if [ $GCC = 1 ]; then
    compile "gcc" "$NAME-dll.c"
    compile "gcc" "$NAME-use-dll.c"
fi

if [ $CLANG = 1 ]; then
    compile "clang" "$NAME-dll.c"
    compile "clang" "$NAME-use-dll.c"
fi

if [ $MSVC = 1 ]; then
    compile "msvc" "$NAME-dll.c"
    compile "msvc" "$NAME-use-dll.c"
fi

# Link DLLs
if [ $LINUX = 1 ]; then
    link_dll "linux"
fi

if [ $GCC = 1 ]; then
    link_dll "gcc"
fi

if [ $CLANG = 1 ]; then
    link_dll "clang"
fi

if [ $MSVC = 1 ]; then
    link_dll "msvc"
fi

# Link executables
if [ $LINUX = 1 ]; then
    link_exe "linux" "linux"
fi

if [ $GCC = 1 ]; then
    link_exe "gcc" "gcc"
    if [ $CLANG = 1 ]; then
        link_exe "gcc" "clang"
    fi
    if [ $MSVC = 1 ]; then
        link_exe "gcc" "msvc"
    fi
fi

if [ $CLANG = 1 ]; then
    link_exe "clang" "clang"
    if [ $GCC = 1 ]; then
        link_exe "clang" "gcc"
    fi
    if [ $MSVC = 1 ]; then
        link_exe "clang" "msvc"
    fi
fi

if [ $MSVC = 1 ]; then
    link_exe "msvc" "msvc"
    if [ $GCC = 1 ]; then
        link_exe "msvc" "gcc"
    fi
    if [ $CLANG = 1 ]; then
        link_exe "msvc" "clang"
    fi
fi

set +x
set +e

chmod +x *.exe *.bin

if [ $LINUX = 1 ]; then
    run "Linux" "LD_LIBRARY_PATH=. ./$NAME-linux-linux.bin"
fi
if [ $GCC = 1 ]; then
    run "GCC (GCC DLL)" ./$NAME-gcc-gcc.exe
    if [ $MSVC = 1 ]; then
        run "GCC (MSVC DLL)" ./$NAME-gcc-msvc.exe
    fi
    if [ $CLANG = 1 ]; then
        run "GCC (Clang DLL)" ./$NAME-gcc-clang.exe
    fi
fi
if [ $MSVC = 1 ]; then
    run "MSVC (MSVC DLL)" ./$NAME-msvc-msvc.exe
    if [ $GCC = 1 ]; then
        run "MSVC (GCC DLL)" ./$NAME-msvc-gcc.exe
    fi
    if [ $CLANG = 1 ]; then
        run "MSVC (Clang DLL)" ./$NAME-msvc-clang.exe
    fi
fi
if [ $CLANG = 1 ]; then
    run "CLANG (Clang DLL)" ./$NAME-clang-clang.exe
    if [ $MSVC = 1 ]; then
        run "CLANG (MSVC DLL)" ./$NAME-clang-msvc.exe
    fi
    if [ $GCC = 1 ]; then
        run "CLANG (GCC DLL)" ./$NAME-clang-gcc.exe
    fi
fi

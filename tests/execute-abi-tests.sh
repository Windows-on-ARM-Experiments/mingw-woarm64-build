#!/bin/bash

DIRNAME=`dirname ${BASH_SOURCE[0]}`
source $DIRNAME/../.github/scripts/config.sh

DIR=$1
NAME=${2:-$(basename $DIR)}

SCRIPT_DIR=`realpath --relative-to=$DIR $DIRNAME/../.github/scripts/tests`
DEBUG_DIR=/mnt/c/Projects/test/

INCLUDE_DIR=$TOOLCHAIN_PATH/$TARGET/include
INTERNAL_INCLUDE_DIR=$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION/include

LIB_DIR=$TOOLCHAIN_PATH/$TARGET/lib
INTERNAL_LIB_DIR_1=$TOOLCHAIN_PATH/lib/gcc/$TARGET/$GCC_VERSION
INTERNAL_LIB_DIR_2=$TOOLCHAIN_PATH/lib/gcc/$TARGET/lib/

GENERATED_FILES="*.a *.bin *.cod *.def *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so"

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
LDFLAGS="-L. -L$LIB_DIR -L$INTERNAL_LIB_DIR_1 -L$INTERNAL_LIB_DIR_2"
CLANG_CFLAGS="-Wno-format -I$INTERNAL_INCLUDE_DIR -I$INCLUDE_DIR"

assembler() {
    local suffix=$1
    case $suffix in
    linux)
        echo aarch64-linux-gnu-gcc -S -fverbose-asm
        ;;
    gcc)
        echo $TOOLCHAIN_PATH/bin/$TARGET-gcc -S -fverbose-asm
        ;;
    clang)
        echo clang --target=$TARGET -S -fverbose-asm
        ;;
    esac
}

compiler() {
    local suffix=$1
    local compiler

    case $suffix in
    linux)
        echo aarch64-linux-gnu-gcc -c
        ;;
    gcc)
        echo $TOOLCHAIN_PATH/bin/$TARGET-gcc -c
        ;;
    clang)
        echo clang --target=$TARGET -c
        ;;
    esac
}

linker() {
    local suffix=$1
    case $suffix in
    linux)
        echo gcc
        ;;
    gcc)
        echo $TOOLCHAIN_PATH/bin/$TARGET-gcc
        ;;
    clang)
        if [ $LLD = 1 ]; then
            echo clang -fuse-ld=lld --target=$TARGET
        else
            echo $TOOLCHAIN_PATH/bin/$TARGET-gcc
        fi
        ;;
    esac
}

obj_ext() {
    local suffix=$1

    case $suffix in
    msvc)
        echo obj
        ;;
    *)
        echo o
        ;;
    esac
}

dll_prefix() {
    local suffix=$1

    case $suffix in
    linux)
        echo lib
        ;;
    *)
        echo ""
        ;;
    esac
}

dll_ext() {
    local suffix=$1

    case $suffix in
    linux)
        echo so
        ;;
    *)
        echo dll
        ;;
    esac
}

exe_ext() {
    local suffix=$1

    case $suffix in
    linux)
        echo bin
        ;;
    *)
        echo exe
        ;;
    esac
}

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
        echo "$LDFLAGS -fPIC"
        ;;
    *)
        echo "$LDFLAGS"
        ;;
    esac
}

assemble() {
    local suffix=$1
    local file=$2
    local assembler=$(assembler $suffix)
    local aflags=$(aflags $suffix)

    if [ $suffix = "msvc" ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-assemble.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
    else
        $assembler $aflags $file -o ${file%.c}-$suffix.s
    fi
}

compile() {
    local suffix=$1
    local file=$2
    local compiler=$(compiler $suffix)
    local cflags=$(cflags $suffix)
    if [ $suffix = "msvc" ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-compile.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
    else
        $compiler $cflags $file -o ${file%.c}-$suffix.o
    fi
}

link_dll() {
    local suffix=$1
    local linker=$(linker $suffix)
    local ldflags=$(ldflags $suffix)
    local obj_ext=$(obj_ext $suffix)
    local dll_prefix=$(dll_prefix $suffix)
    local dll_ext=$(dll_ext $suffix)

    if [ $suffix = "msvc" ] && [ $LINK = 1 ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-link-dll.bat) $(wslpath -w $PWD) $NAME $suffix $MSVC_ARCH
    else
        $linker -shared $NAME-dll-$suffix.$obj_ext $ldflags -o $dll_prefix$NAME-dll-$suffix.$dll_ext
    
    fi
    if [ $suffix != "linux" ]; then
        gendef $dll_prefix$NAME-dll-$suffix.$dll_ext
    fi
}

link_exe() {
    local exe_suffix=$1
    local dll_suffix=$2
    local linker=$(linker $exe_suffix)
    local ldflags=$(ldflags $exe_suffix)
    local obj_ext=$(obj_ext $exe_suffix)
    local exe_ext=$(exe_ext $exe_suffix)

    # Woarkaround for IMAGE_REL_ARM64_ADDR32 issue.
    if [ $exe_suffix = "gcc" ] && [ $dll_suffix = "msvc" ]; then
        linker=$(linker "clang")
    fi

    if [ $exe_suffix = "msvc" ] && [ $LINK = 1 ]; then
        cmd.exe /c $(wslpath -w $SCRIPT_DIR/msvc-link-exe.bat) $(wslpath -w $PWD) $NAME $exe_suffix $dll_suffix $MSVC_ARCH
    else
        $linker $NAME-use-dll-$exe_suffix.$obj_ext -l$NAME-dll-$dll_suffix $ldflags -o $NAME-$exe_suffix-$dll_suffix.$exe_ext
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

if [ -d $DEBUG_DIR ]; then
    cp *.exe $DEBUG_DIR
    cp *.dll $DEBUG_DIR
    cp *.c $DEBUG_DIR
    cp *.pdb $DEBUG_DIR
fi

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

#!/bin/bash

set -e          # exit on error
set -x          # echo on
set -o pipefail # fail of any command in pipeline is an error

NAME=${1:-valist}
ARCH=aarch64
TARGET=$ARCH-w64-mingw32
PREFIX=~/cross-$TARGET-ucrt

DEBUG_DIR=/mnt/c/Projects/$NAME

INCLUDE_DIR=$PREFIX/$TARGET/include
INTERNAL_INCLUDE_DIR=$PREFIX/lib/gcc/$TARGET/15.0.0/include

LIB_DIR=$PREFIX/$TARGET/lib
INTERNAL_LIB_DIR_1=$PREFIX/lib/gcc/$TARGET/15.0.0
INTERNAL_LIB_DIR_2=$PREFIX/lib/gcc/$TARGET/lib/

GENERATED_FILES="*.bin *.cod *.dll *.exe *.exp *.gimple *.ilk *.lib *.pdb *.o *.obj *.so"

rm -f $GENERATED_FILES

LINUX=${LINUX:-1}
GCC=${GCC:-1}
MSVC=${MSVC:-1}
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
			cmd.exe /c $(wslpath -w assemble.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
			;;
		*)
			$PREFIX/bin/$TARGET-gcc $flags $file -S -fverbose-asm -o ${file%.c}-$suffix.s
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
			cmd.exe /c $(wslpath -w compile.bat) $(wslpath -w $PWD) ${file%.c} $suffix $MSVC_ARCH
			;;
		*)
			$PREFIX/bin/$TARGET-gcc $flags $file -c -o ${file%.c}-$suffix.o
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
		linker=$PREFIX/bin/$TARGET-gcc
		flags="$flags -Wl,--out-implib=$NAME-dll-$suffix.lib -Wl,--export-all-symbols"
		obj_ext=o
		dll_ext=dll
		;;
	clang)
		if [ $LLD = 1 ]; then
			linker="clang -fuse-ld=lld --target=$TARGET"
		else
			linker=$PREFIX/bin/$TARGET-gcc
		fi
		obj_ext=o
		dll_ext=dll
		;;
	msvc)
		linker=$PREFIX/bin/$TARGET-gcc
		flags="$flags -Wl,--out-implib=$NAME-dll-$suffix.lib -Wl,--export-all-symbols"
		obj_ext=obj
		dll_ext=dll
		;;
	esac

	if [ $suffix = "msvc" ] && [ $LINK = 1 ]; then
		cmd.exe /c $(wslpath -w link-dll.bat) $(wslpath -w $PWD) $NAME $suffix $MSVC_ARCH
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
		compiler=$PREFIX/bin/$TARGET-gcc
		obj_ext=o
		exe_ext=exe
		;;
	clang)
		if [ $LLD = 1 ]; then
			compiler="clang -fuse-ld=lld --target=$TARGET"
		else
			compiler=$PREFIX/bin/$TARGET-gcc
		fi
		obj_ext=o
		exe_ext=exe
		;;
	msvc)
		compiler=$PREFIX/bin/$TARGET-gcc
		obj_ext=obj
		exe_ext=exe
		;;
	esac

	if [ $exe_suffix = "msvc" ] && [ $LINK = 1 ]; then
		cmd.exe /c $(wslpath -w link-exe.bat) $(wslpath -w $PWD) $NAME $exe_suffix $dll_suffix $MSVC_ARCH
	else
		$compiler $flags $NAME-use-dll-$exe_suffix.$obj_ext -l$NAME-dll-$dll_suffix -L. -o $NAME-$exe_suffix-$dll_suffix.$exe_ext
	fi
}

run() {
	echo -e "$1:\n"
	eval $2
	echo -e "\tresult: $?"
}

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
	if [ -f $NAME-dll-gcc-fixed.s ]; then
		compile "gcc" "$NAME-dll-gcc-fixed.s"
	fi
	if [ -f $NAME-use-dll-gcc-fixed.s ]; then
		compile "gcc" "$NAME-use-dll-gcc-fixed.s"
	fi
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
	if [ -f $NAME-dll-gcc-fixed.s ]; then
		link_dll "gcc"
	fi
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
	if [ -f $NAME-use-dll-gcc-fixed.s ]; then
		link_exe "gcc-fixed" "gcc"
	fi
	if [ $CLANG = 1 ]; then
		link_exe "gcc" "clang"
		if [ -f $NAME-use-dll-gcc-fixed.s ]; then
			link_exe "gcc-fixed" "clang"
		fi
	fi
	if [ $MSVC = 1 ]; then
		link_exe "gcc" "msvc"
		if [ -f $NAME-use-dll-gcc-fixed.s ]; then
			link_exe "gcc-fixed" "msvc"
		fi
	fi
fi

if [ $CLANG = 1 ]; then
	link_exe "clang" "clang"
	if [ $GCC = 1 ]; then
		link_exe "clang" "gcc"
		if [ -f $NAME-dll-gcc-fixed.s]; then
			link_exe "clang" "gcc-fixed"
		fi
	fi
	if [ $MSVC = 1 ]; then
		link_exe "clang" "msvc"
	fi
fi

if [ $MSVC = 1 ]; then
	link_exe "msvc" "msvc"
	if [ $GCC = 1 ]; then
		link_exe "msvc" "gcc"
		if [ -f $NAME-dll-msvc-fixed.s ]; then
			link_exe "msvc" "gcc-fixed"
		fi
	fi
	if [ $CLANG = 1 ]; then
		link_exe "msvc" "clang"
	fi
fi

mkdir -p $DEBUG_DIR
pushd $DEBUG_DIR
rm -f $GENERATED_FILES
popd

cp $NAME-dll.c $NAME-use-dll.c $DEBUG_DIR
if [ $GCC = 1 ]; then
	cp $NAME-dll-gcc.dll $NAME-gcc-gcc.exe $DEBUG_DIR
	if [ -f $NAME-use-dll-gcc-fixed.s ] || [ -f $NAME-dll-gcc-fixed.s ]; then
		cp $NAME-gcc-fixed-gcc-fixed.exe $DEBUG_DIR
	fi
	if [ -f $NAME-dll-gcc-fixed.s ]; then
		cp $NAME-dll-gcc-fixed.dll $DEBUG_DIR
	fi
fi
if [ $MSVC = 1 ]; then
	cp $NAME-dll-msvc.dll $NAME-msvc-msvc.exe $DEBUG_DIR
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

set +x
set +e

chmod +x *.exe *.bin

if [ $LINUX = 1 ]; then
	run "Linux" "LD_LIBRARY_PATH=. ./$NAME-linux-linux.bin"
fi
if [ $GCC = 1 ]; then
	run "GCC (GCC DLL)" ./$NAME-gcc-gcc.exe
	if [ -f $NAME-use-dll-gcc-fixed.s ] || [ -f $NAME-dll-gcc-fixed.s ]; then
		run "GCC fixed (GCC DLL fixed)" ./$NAME-gcc-fixed-gcc-fixed.exe
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
	run "MSVC (MSVC DLL)" ./$NAME-msvc-msvc.exe
	if [ $GCC = 1 ]; then
		run "MSVC (GCC DLL)" ./$NAME-msvc-gcc.exe
		if [ -f $NAME-dll-gcc-fixed.s ]; then
			run "MSVC (GCC DLL fixed)" ./$NAME-msvc-gcc-fixed.exe
		fi
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
		if [ -f $NAME-dll-gcc-fixed.s ]; then
			run "CLANG (GCC DLL fixed)" ./$NAME-clang-gcc-fixed.exe
		fi
	fi
fi

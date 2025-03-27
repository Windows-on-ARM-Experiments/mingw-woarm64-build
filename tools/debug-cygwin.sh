#!/bin/bash

# Script to launch TTD (Time Travel Debugging) session using WinDbgX from WSL.

source `dirname ${BASH_SOURCE[0]}`/../.github/scripts/config.sh

find_windbgx() {
    echo `which WinDbgX.exe`
}

find_ttd_engine() {
     echo `which TTD.exe`
}

path_to_windows() {
    wslpath -w "$1"
}

show_help() {
    echo "Usage: $0 [options] <executable> [executable_args]"
    echo ""
    echo "Options:"
    echo "  -h, --help                 Show this help message"
    echo "  -o, --output <file>        Specify output .run file for TTD recording"
    echo "  -w, --windbg <path>        Specify WinDbgX path (optional)"
    echo "  -t, --ttd <path>           Specify TTD engine path (optional)"
    echo "  -d, --debug                Directly debug the executable (optional)"
    echo "  -c, --collect              Launch TDD recording (optional)"
    echo "  -l, --launch               Launch WinDbgX immediately after recording (optional)"
    echo "  --child <id>               Launch WinDbgx session for child process recording (optional)"
    echo "  -f, --folder <path>        Specify folder to copy binary and cygwin1.dll (optional)"
    echo ""
    echo "Example:"
    echo "  $0 -o myrecording.run -c -l ltp/fork01 arg1 arg2"
}

DEBUG=0
COLLECT=0
LAUNCH=0
OUTPUT_FILE=""
EXECUTABLE_NAME=""
EXECUTABLE_DIR=""
EXECUTABLE=""
EXECUTABLE_ARGS=""
WINDBGX_PATH=""
TTD_ENGINE=""
COPY_FOLDER=""
CHILD=0
CHILD_ID="01"
WSL_DISTRO=Ubuntu-24.04

while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            show_help
            exit 0
            ;;
        -o|--output)
            OUTPUT_FILE="$2"
            shift 2
            ;;
        -w|--windbg)
            WINDBGX_PATH="$2"
            shift 2
            ;;
        -t|--ttd)
            TTD_ENGINE="$2"
            shift 2
            ;;
        -d|--debug)
            DEBUG=1
            shift
            ;;
        -c|--collect)
            COLLECT=1
            shift
            ;;
        -l|--launch)
            LAUNCH=1
            shift
            ;;
        --child)
            CHILD=1
            CHILD_ID="$2"
            shift 2
            ;;
        -f|--folder)
            COPY_FOLDER="$2"
            shift 2
            ;;
        -*)
            echo "Error: Unknown option $1"
            show_help
            exit 1
            ;;
        *)
            EXECUTABLE_NAME="$1"
            EXECUTABLE_DIR=$(dirname "$BUILD_PATH/cygwin/$TARGET/winsup/testsuite/winsup.api/$EXECUTABLE_NAME.exe")
            EXECUTABLE_NAME=$(basename "$EXECUTABLE_NAME")
            EXECUTABLE="$EXECUTABLE_DIR/$EXECUTABLE_NAME.exe"
            shift
            EXECUTABLE_ARGS="$@"
            break
            ;;
    esac
done

# Check if debugging and recording and launching are not both enabled.
if [ $DEBUG -eq 1 ] && [ $COLLECT -eq 1 ]; then
    echo "Error: Cannot debug and collect at the same time."
    exit 1
fi
if [ $DEBUG -eq 1 ] && [ $LAUNCH -eq 1 ]; then
    echo "Error: Cannot debug and launch at the same time."
    exit 1
fi

# Check for debugged executable.
if [ -z "$EXECUTABLE_NAME" ]; then
    echo "Error: No executable specified"
    show_help
    exit 1
fi

# Find TTD engine if not specified.
if [ -z "$TTD_ENGINE" ]; then
    TTD_ENGINE=$(find_ttd_engine "$WINDBGX_PATH")
    if [ -z "$TTD_ENGINE" ]; then
        echo "Error: TTD engine not found. Please specify path using -t option."
        exit 1
    fi
    echo "Using TTD engine: $TTD_ENGINE"
fi

# Find WinDbgX if not specified.
if [ -z "$WINDBGX_PATH" ]; then
    WINDBGX_PATH=$(find_windbgx)
    if [ -z "$WINDBGX_PATH" ]; then
        echo "Error: WinDbgX not found. Please specify path using -w option."
        exit 1
    fi
    echo "Using WinDbgX: $WINDBGX_PATH"
fi

# If a copy folder is specified, copy the binary and cygwin1.dll to that folder.
if [ -n "$COPY_FOLDER" ]; then
    mkdir -p "$COPY_FOLDER"

    if [ $DEBUG -eq 1 ] || [ $COLLECT -eq 1 ]; then
        rm -rf "$COPY_FOLDER/$EXECUTABLE_NAME.exe" "$COPY_FOLDER/cygwin1.dll"

        rm -rf $COPY_FOLDER/*.out \
            $COPY_FOLDER/*.run \
            $COPY_FOLDER/*.idx \
            $COPY_FOLDER/*.old

        cp "$EXECUTABLE" "$COPY_FOLDER"
        cp "$BUILD_PATH/cygwin/$TARGET/winsup/testsuite/testinst/bin/cygwin1.dll" "$COPY_FOLDER"
        sleep 1
    fi

    EXECUTABLE="$COPY_FOLDER/$EXECUTABLE_NAME.exe"
    EXECUTABLE_DIR=$COPY_FOLDER
fi

# Generate output filename if not specified.
if [ -z "$OUTPUT_FILE" ]; then
    OUTPUT_FILE="$EXECUTABLE_DIR/$EXECUTABLE_NAME.run"
fi
LOG_FILE="$EXECUTABLE_DIR/$EXECUTABLE_NAME.out"

# Convert paths to Windows format.
WIN_EXECUTABLE=$(wslpath -w "$EXECUTABLE")
WIN_EXECUTABLE_DIR=$(wslpath -w "$EXECUTABLE_DIR")
WIN_OUTPUT_FILE=$(wslpath -w "$OUTPUT_FILE")
WIN_TTD_ENGINE=$(wslpath -w "$TTD_ENGINE")
WIN_SOURCE_PATH=$(wslpath -w "$SOURCE_PATH/cygwin")
WIN_SOURCE_PATH="W:\\${WIN_SOURCE_PATH#\\\\wsl.localhost\\$WSL_DISTRO\\}"

if [ $COLLECT -eq 1 ]; then
    # Run the TTD recording with elevated privileges
    echo "Starting TTD recording for: $EXECUTABLE"
    echo "Recording will be saved to: $OUTPUT_FILE"
    echo "Log will be saved to: $LOG_FILE"
    powershell.exe "Set-Location -Path $WIN_EXECUTABLE_DIR; Start-Process -Wait -Verb RunAs -FilePath $WIN_TTD_ENGINE -ArgumentList \"-out $WIN_OUTPUT_FILE -noUI -children $WIN_EXECUTABLE $EXECUTABLE_ARGS\"; exit \$LASTEXITCODE"

    TTD_RESULT=$?
    if [ $TTD_RESULT -ne 0 ]; then
        echo "Error: TTD recording failed with exit code $TTD_RESULT"
        exit $TTD_RESULT
    fi

    if [ -f "$LOG_FILE" ]; then
        echo "Parent recording log:"
        cat "$LOG_FILE"
    fi

    if [ $CHILD -eq 1 ]; then
        echo "Child $CHILD_ID recording log:"
        cat "${LOG_FILE%.out}$CHILD_ID.out"
    fi

    if [ ! -f "$OUTPUT_FILE" ]; then
        echo "Error: TTD output file $OUTPUT_FILE has not been created."
        exit 1
    fi

    echo "TTD recording complete: $OUTPUT_FILE"
fi

# Launch WinDbgX if requested
if [ $LAUNCH -eq 1 ] || [ $DEBUG -eq 1 ]; then
    if [ $LAUNCH -eq 1 ]; then
        if [ ! -f "$OUTPUT_FILE" ]; then
            echo "Error: Output file $OUTPUT_FILE does not exist. Please run TTD recording first."
            exit 1
        fi

        if [ $CHILD -eq 1 ]; then
            WIN_OUTPUT_FILE="${WIN_OUTPUT_FILE%.run}$CHILD_ID.run"
        fi
    fi

    # bm cygwin1!threadfunc_fe
    # bm cygwin1!munge_threadfunc
    # bm main
    # bm cygwin1!dofork
    # bm cygwin1!setjmp
    # bm cygwin1!sigsetjmp
    # bm cygwin1!longjmp
    # bm cygwin1!siglongjmp
    # bm cygwin1!frok::parent
    # bm cygwin1!child_copy
    # bm cygwin1!frok::child
    # .watch (_TEB*) @x18
    # .watch ((_TEB*) @x18)->Tib.StackBase
    # .watch (void*[20]) (((_TEB*) @x18)->Tib.StackBase - 12800)
    # .watch (_cygtls*) (((_TEB*) @x18)->Tib.StackBase - 12800)
    # .watch ((child_info_fork*) child_proc_info)->jmp
    # .childdbg 1
    # .open W:\home\blackhex\mingw-woarm64-build\code\cygwin\winsup\cygwin\fork.cc
    # .childdbg 1
    # bm cygwin1!child_copy "g; bp cygwin1!dofork+0x194;"
    # g

    # Debug fork child process
    #  bm main
    #  .childdbg 1
    #  bm cygwin1!fork
    #  bm cygwin1!dofork
    #  bp cygwin1!dofork+0x180
    #  bm cygwin1!frok::parent
    #  bm cygwin1!child_copy
    #  bp cygwin1!child_copy+0xc8
    #  sxe -c "bp cygwin1!dofork+0x194; g" ibp
    #  g

    # Process lifecycle
    #  bm cygwin1!dll_entry
    #  bm cygwin1!dll_crt0_0
    #  bm cygwin1!dll_crt0_1
    #  bp cygwin1!dll_crt0_1+0x5b0
    #  bm cygwin1!threadfunc_fe
    #  bm cygwin1!munge_threadfunc
    #  bm main
    #  bm cygwin1!__main
    #  bm cygwin1!fork
    #  bm cygwin1!dofork
    #  bm cygwin1!setjmp
    #  bm cygwin1!sigsetjmp
    #  bm cygwin1!longjmp
    #  bm cygwin1!siglongjmp
    #  bm cygwin1!frok::parent
    #  bm cygwin1!child_copy
    #  bm cygwin1!frok::child
    #  bm cygwin1!cygwin_exit
    #  bm cygwin1!exit
    #  bm cygwin1!__call_exitprocs
    #    bm cygwin1!do_global_dtors
    #    bm cygwin1!dll_global_dtors
    #    bm cygwin1!stdio_exit_handler
    #      bm cygwin1!_fwalk_sglue
    #        bm cygwin1!__sflushw_r
    #          bm cygwin1!__sflush_r
    #  bm cygwin1!_exit
    #    bm cygwin1!do_exit
    #      bm cygwin1!signal
    #      bm cygwin1!close_all_files
    #      bm cygwin1!pinfo::exit
    #        bm cygwin1!pinfo::proc_terminate

    cat <<EOF > $EXECUTABLE_DIR/script
      bm main
      g
EOF

    if ! command -v unix2dos &> /dev/null; then
        echo "unix2dos command not found, installing..."
        sudo apt install -y dos2unix
    fi
    unix2dos $EXECUTABLE_DIR/script

    if [ $DEBUG -eq 1 ]; then
        echo "Launching WinDbgX in debug mode..."
        "$WINDBGX_PATH" -lsrcpath $WIN_SOURCE_PATH -c "$<$WIN_EXECUTABLE_DIR\\script" "$WIN_EXECUTABLE"
    else
        echo "Launching WinDbgX with recording..."
        "$WINDBGX_PATH" -z "$WIN_OUTPUT_FILE" -lsrcpath $WIN_SOURCE_PATH -c "$<$WIN_EXECUTABLE_DIR\\script"
    fi
fi

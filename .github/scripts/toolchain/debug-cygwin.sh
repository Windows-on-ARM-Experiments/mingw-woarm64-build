#!/bin/bash

# Script to launch TTD (Time Travel Debugging) session using WinDbgX from WSL.

source `dirname ${BASH_SOURCE[0]}`/../config.sh

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
    echo "  -c, --collect              Launch TDD recording"
    echo "  -l, --launch               Launch WinDbgX immediately after recording"
    echo "  --child <id>                Launch WinDbgx session for child process recording (optional)"
    echo "  -f, --folder <path>        Specify folder to copy binary and cygwin1.dll (optional)"
    echo ""
    echo "Example:"
    echo "  $0 -o myrecording.run -c -l ./myprogram.exe arg1 arg2"
}

LAUNCH_TTD=0
LAUNCH_WINDBG=0
OUTPUT_FILE=""
EXECUTABLE=""
EXECUTABLE_NAME=""
EXECUTABLE_DIR=""
EXECUTABLE_ARGS=""
WINDBGX_PATH=""
TTD_ENGINE=""
COPY_FOLDER=""
CHILD=0
CHILD_ID="01"

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
        -c|--collect)
            LAUNCH_TTD=1
            shift
            ;;
        -l|--launch)
            LAUNCH_WINDBG=1
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
            EXECUTABLE="$1"
            EXECUTABLE_NAME=$(basename "$EXECUTABLE" .exe)
            EXECUTABLE_DIR=$(dirname $(realpath "$EXECUTABLE"))
            shift
            EXECUTABLE_ARGS="$@"
            break
            ;;
    esac
done

# Check for debugged executable.
if [ -z "$EXECUTABLE" ]; then
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

    rm -rf $COPY_FOLDER/*
    sleep 1
    if [ "$(ls -A $COPY_FOLDER)" ]; then
        echo "Error: Failed to clean $COPY_FOLDER."
        exit 1
    fi

    cp "$EXECUTABLE" "$COPY_FOLDER"
    cp "$TOOLCHAIN_PATH/bin/cygwin1.dll" "$COPY_FOLDER"
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
WIN_SOURCE_PATH=$(wslpath -w "$SOURCE_PATH")
WIN_SOURCE_PATH="W:\\${WIN_SOURCE_PATH#\\\\wsl.localhost\\Ubuntu-22.04\\}"

if [ $LAUNCH_TTD -eq 1 ]; then
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
if [ $LAUNCH_WINDBG -eq 1 ]; then
    if [ ! -f "$OUTPUT_FILE" ]; then
        echo "Error: Output file $OUTPUT_FILE does not exist. Please run TTD recording first."
        exit 1
    fi

    if [ $CHILD -eq 1 ]; then
        WIN_OUTPUT_FILE="${WIN_OUTPUT_FILE%.run}$CHILD_ID.run"
    fi

    cat <<EOF > $EXECUTABLE_DIR/script
        bm main
        bm cygwin1!setjmp
        bm cygwin1!sigsetjmp
        bm cygwin1!longjmp
        bm cygwin1!siglongjmp
        g
EOF
    unix2dos $EXECUTABLE_DIR/script

    echo "Launching WinDbgX with recording..."
    "$WINDBGX_PATH" -z "$WIN_OUTPUT_FILE" -lsrcpath $WIN_SOURCE_PATH -c "$<$WIN_EXECUTABLE_DIR\\script"
fi

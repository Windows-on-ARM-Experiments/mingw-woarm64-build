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
    cp "$EXECUTABLE" "$COPY_FOLDER"
    cp "$TOOLCHAIN_PATH/bin/cygwin1.dll" "$COPY_FOLDER"
    EXECUTABLE="$COPY_FOLDER/$EXECUTABLE_NAME.exe"
    EXECUTABLE_DIR=$COPY_FOLDER
fi

# Generate output filename if not specified.
if [ -z "$OUTPUT_FILE" ]; then
    OUTPUT_FILE="$EXECUTABLE_DIR/$EXECUTABLE_NAME.run"
fi

# Convert paths to Windows format.
WIN_EXECUTABLE=$(wslpath -w "$EXECUTABLE")
WIN_EXECUTABLE_DIR=$(wslpath -w "$EXECUTABLE_DIR")
WIN_OUTPUT_FILE=$(wslpath -w "$OUTPUT_FILE")
WIN_TTD_ENGINE=$(wslpath -w "$TTD_ENGINE")
WIN_SOURCE_PATH=$(wslpath -w "$SOURCE_PATH")
WIN_SOURCE_PATH="W:\\${WIN_SOURCE_PATH#\\\\wsl.localhost\\Ubuntu-22.04\\}"

if [ $LAUNCH_WINDBG -eq 1 ]; then
    # Run the TTD recording with elevated privileges
    echo "Starting TTD recording for: $EXECUTABLE"
    echo "Recording will be saved to: $OUTPUT_FILE"
    powershell.exe -Command "Start-Process -FilePath \"$WIN_TTD_ENGINE\" -ArgumentList \"-out $WIN_OUTPUT_FILE -children  $WIN_EXECUTABLE $EXECUTABLE_ARGS\" -Verb RunAs"

    TTD_RESULT=$?
    if [ $TTD_RESULT -ne 0 ]; then
        echo "Error: TTD recording failed with exit code $TTD_RESULT"
        exit $TTD_RESULT
    fi

    echo "TTD recording complete: $OUTPUT_FILE"
fi

# Launch WinDbgX if requested
if [ $LAUNCH_WINDBG -eq 1 ]; then
    cat <<EOF > $EXECUTABLE_DIR/script
        bm main
        bm cygwin1!dofork
        bm cygwin1!frok::parent
        bm cygwin1!pthread_wrapper
        g
EOF
    unix2dos $EXECUTABLE_DIR/script

    echo "Launching WinDbgX with recording..."
    "$WINDBGX_PATH" -z "$WIN_OUTPUT_FILE" -lsrcpath $WIN_SOURCE_PATH -c "$<$WIN_EXECUTABLE_DIR\\script"
fi

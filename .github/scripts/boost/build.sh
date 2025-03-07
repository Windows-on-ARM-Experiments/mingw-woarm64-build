#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

IS_X64=$1
if [[ "$IS_X64" == "true" ]]; then
    echo "IS_X64 is true"
    sudo apt-get install mingw-w64
    ls /usr/bin | grep mingw
    echo $PATH | sed 's/:/\n/g'
    TOOLCHAIN_FILE=$ROOT_PATH/.github/cmake/x86_64-w64-mingw32.cmake
    BOOST_CONTEXT_ARCHITECTURE=x86_64
    BOOST_CONTEXT_ABI=ms
else
    echo "IS_X64 is false"
    TOOLCHAIN_FILE=$ROOT_PATH/.github/cmake/aarch64-w64-mingw32.cmake
    BOOST_CONTEXT_ARCHITECTURE=arm64
    BOOST_CONTEXT_ABI=aapcs
fi

BOOST_BUILD_PATH=$BUILD_PATH/boost
BOOST_SOURCE_PATH=$SOURCE_PATH/boost

mkdir -p $BOOST_BUILD_PATH
cd $BOOST_BUILD_PATH

df . -h

# https://github.com/actions/runner-images/issues/2840#issuecomment-1284059930
sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"

df . -h

if [[ "$RUN_CONFIG" = 1 ]] || [[ ! -f "$BOOST_BUILD_PATH/Makefile" ]]; then
    echo "::group::Configure Boost"
        rm -rf $BOOST_BUILD_PATH/*

        if [[ "$DEBUG" = 1 ]]; then
            HOST_OPTIONS=" \
                -DCMAKE_BUILD_TYPE=Debug"
        fi

        # TODO: Install?
        # --target install \
        # -DCMAKE_INSTALL_PREFIX=$BOOST_PATH \

        # TODO: Patch Boost modules to use -Wa,-mbig-obj instead of passing it here to all modules
        # -Wno-error=attributes
        LDFLAGS="-static-libstdc++ -static-libgcc" \
        CXXFLAGS="-D_WIN32_WINNT=0x0A00 -Wno-attributes -Wa,-mbig-obj" \
        cmake \
            $BOOST_SOURCE_PATH \
            -DBUILD_TESTING=ON \
            -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN_FILE \
            -DBOOST_CHARCONV_QUADMATH_FOUND_EXITCODE=0 \
            -DBOOST_CONTEXT_ARCHITECTURE=$BOOST_CONTEXT_ARCHITECTURE \
            -DBOOST_CONTEXT_BINARY_FORMAT=pe \
            -DBOOST_CONTEXT_ABI=$BOOST_CONTEXT_ABI \
            -DBOOST_FIBER_NUMA_TARGET_OS=windows \
            -DBOOST_LOCALE_ENABLE_POSIX=OFF \
            -DBOOST_LOCALE_ENABLE_WINAPI=ON \
            -DBOOST_THREAD_THREADAPI=win32 \
            $HOST_OPTIONS
    echo "::endgroup::"
fi

echo "::group::Build Boost and its tests"
    cmake --build . --target tests -- -k VERBOSE=1 $BUILD_MAKE_OPTIONS || true
echo "::endgroup::"

echo "::group::Make generated paths relative"
    # Remove "BuildDirectory: ..." entry from DartConfiguration.tcl. If it's defined and built tests
    # are moved from Linux to Windows, ctest running on Windows doesn't find any tests.
    sed -i '/^BuildDirectory/d' "DartConfiguration.tcl"

    find . -type f -name "CTestTestfile.cmake" | while IFS= read -r file
    do
    build_dir=$(cat "$file" | grep '# Build directory: ' | cut -f2 -d ':' | tr -d [:space:] | sed -E "s|($BOOST_BUILD_PATH/).*|\1|")
    if [ -n "$build_dir" ]; then
        sed -i "s|$build_dir|../../../|g" "$file"
    fi
    done
echo "::endgroup::"

echo 'Success!'

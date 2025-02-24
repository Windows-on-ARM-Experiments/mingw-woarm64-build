#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/../config.sh

BOOST_SOURCE_PATH=$SOURCE_PATH/boost

mkdir -p $BOOST_SOURCE_PATH

echo "::group::Checkout Boost"
    git clone --recurse-submodules --single-branch https://github.com/$BOOST_REPO.git -b $BOOST_BRANCH $BOOST_SOURCE_PATH
    cd $BOOST_SOURCE_PATH

    # Add missing assembler files definition for GCC+Win+Aarch64 in Boost.Context
    pushd libs/context
    git checkout e4c91576d27c359f4b38a009409e5b611132de04
    popd

    # Switch serialization to current (as of 3rd Feb 2025) develop to get fix for missing dependency
    # on filesystem library.
    # Error: undefined reference to `boost::filesystem::detail::path_traits::convert(...)
    pushd libs/serialization
    git checkout 8a8c62864f05732131bf6785d54466d8ac6cd477
    popd

    # Unmerged fix: https://github.com/boostorg/thread/pull/408
    # Error: ../boost/thread/future.hpp:4671:19: error: ‘struct boost::detail::run_it<FutureExecutorContinuationSharedState>’ has no member named ‘that’; did you mean ‘that_’?
    pushd libs/thread
    git apply $ROOT_PATH/.github/scripts/boost/thread.patch
    popd
echo "::endgroup::"

echo 'Success!'

BINUTILS_BRANCH=woarm64
GCC_BRANCH=woarm64
MINGW_BRANCH=woarm64

pushd code/binutils-master
    git fetch --all
    git reset --hard
    git switch $BINUTILS_BRANCH
    git branch
    git pull origin $BINUTILS_BRANCH
popd

pushd code/gcc-master
    git fetch --all
    git reset --hard
    git switch $GCC_BRANCH
    git branch
    git pull origin $GCC_BRANCH
popd

pushd code/mingw-w64-master
    git fetch --all
    git reset --hard
    git switch $MINGW_BRANCH
    git branch
    git pull origin $MINGW_BRANCH
popd

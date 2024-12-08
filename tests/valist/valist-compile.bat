call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" arm64

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

cl /c /Zi /Od /FAcs %name%-dll.c /Fo%name%-dll-msvc.obj
cl /c /Zi /Od /FAcs %name%-use-dll.c /Fo%name%-use-dll-msvc.obj

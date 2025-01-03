call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %3

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

cl /c /Zi /Od /FAcs %name%-dll.c /Fo%name%-dll-msvc.obj
cl /c /Zi /Od /FAcs %name%-use-dll.c /Fo%name%-use-dll-msvc.obj

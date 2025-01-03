call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %3

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /DLL /DEBUG /DEF:%name%-dll-msvc.def /OUT:%name%-dll-msvc.dll /IMPLIB:%name%-dll-msvc.lib %name%-dll-msvc.obj

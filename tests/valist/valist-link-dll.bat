call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" arm64

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /DLL /DEBUG /DEF:%name%-dll.def /OUT:%name%-msvc.dll /IMPLIB:%name%-dll-msvc.lib %name%-dll-msvc.obj

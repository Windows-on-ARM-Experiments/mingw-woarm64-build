call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" arm64

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /DEBUG /OUT:%name%-msvc.exe %name%-use-dll-msvc.obj %name%-dll-msvc.lib
link /INCREMENTAL:NO /DEBUG /OUT:%name%-msvc-gcc.exe %name%-use-dll-msvc.obj %name%-dll-gcc.lib
if exist "%name%-dll-gcc-fixed.s" (
        link /INCREMENTAL:NO /DEBUG /OUT:%name%-msvc-gcc-fixed.exe %name%-use-dll-msvc.obj %name%-dll-gcc-fixed.lib
)

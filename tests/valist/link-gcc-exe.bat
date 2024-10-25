call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %3

@echo on

set "dir=%1"
set "name=%2"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /ENTRY:main /DEBUG /OUT:%name%-gcc-msvc.exe %name%-use-dll-gcc.o %name%-dll-msvc.lib
if %errorlevel% neq 0 exit /b %errorlevel%
if exist "%name%-dll-gcc-fixed.s" (
        link /INCREMENTAL:NO /DEBUG /OUT:%name%-gcc-fixed-msvc.exe %name%-use-dll-gcc-fixed.o %name%-dll-msvc.lib
        if %errorlevel% neq 0 exit /b %errorlevel%
)

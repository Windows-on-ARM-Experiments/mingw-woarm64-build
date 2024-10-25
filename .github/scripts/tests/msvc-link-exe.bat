call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %5

@echo on

set "dir=%1"
set "name=%2"
set "exe_suffix=%3"
set "dll_suffix=%4"
set "arch=%5"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

if "%arch%"=="x64" (
    set "machine=amd64"
) else (
    set "machine=arm64"
)

lib /def:%name%-dll-%dll_suffix%.def /machine:%machine% /out:%name%-dll-%dll_suffix%.lib
link /INCREMENTAL:NO /DEBUG /DYNAMICBASE /NODEFAULTLIB:msvcrt /OUT:%name%-%exe_suffix%-%dll_suffix%.exe %name%-use-dll-%exe_suffix%.obj %name%-dll-%dll_suffix%.lib
if %errorlevel% neq 0 exit /b %errorlevel%

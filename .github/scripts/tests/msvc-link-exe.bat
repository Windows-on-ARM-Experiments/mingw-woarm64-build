call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %5

@echo on

set "dir=%1"
set "name=%2"
set "exe_suffix=%3"
set "dll_suffix=%4"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /DEBUG /OUT:%name%-%exe_suffix%-%dll_suffix%.exe %name%-use-dll-%exe_suffix%.obj %name%-dll-%dll_suffix%.lib
if %errorlevel% neq 0 exit /b %errorlevel%

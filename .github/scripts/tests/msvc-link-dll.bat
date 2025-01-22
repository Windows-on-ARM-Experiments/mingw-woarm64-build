call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %4

@echo on

set "dir=%1"
set "name=%2"
set "suffix=%3"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

link /INCREMENTAL:NO /DLL /DEBUG /OUT:%name%-dll-%suffix%.dll /IMPLIB:%name%-dll-%suffix%.lib %name%-dll-%suffix%.obj
if %errorlevel% neq 0 exit /b %errorlevel%

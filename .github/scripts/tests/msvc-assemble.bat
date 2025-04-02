call "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" %4

@echo on

set "dir=%1"
set "name=%2"
set "suffix=%3"

call set dir=%%dir:\\wsl.localhost\Ubuntu-22.04=W:%%
cd /D "%dir%"

cl /c /Zi /Od /FAcsu %name%.c

cl /c /Zi /Od /FAcs valist-dll.c /Fovalist-dll-msvc.obj
link /DLL /DEBUG /OUT:valist-msvc.dll /IMPLIB:valist-dll-msvc.lib valist-dll-msvc.obj

cl /c /Zi /Od /FAcs valist-use-dll.c /Fovalist-use-dll-msvc.obj
link /DEBUG /OUT:valist-msvc.exe valist-use-dll-msvc.obj valist-dll-msvc.lib

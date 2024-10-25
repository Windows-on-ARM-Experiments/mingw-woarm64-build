cl /c /Zi /Od /FAcs vararg-dll.c /Fovararg-dll-msvc.obj
link /DLL /DEBUG /OUT:vararg-msvc.dll /IMPLIB:vararg-dll-msvc.lib vararg-dll-msvc.obj

cl /c /Zi /Od /FAcs vararg-use-dll.c /Fovararg-use-dll-msvc.obj
link /DEBUG /OUT:vararg-msvc.exe vararg-use-dll-msvc.obj vararg-dll-msvc.lib

Set-PSDebug -Trace 2 # echo on

if ( -not $env:ARCH ) { $env:ARCH = "aarch64" }
if ( -not $env:PLATFORM ) { $env:PLATFORM = "w64-mingw32" }
if ( -not $env:CRT ) { $env:CRT = "ucrt" }
if ( -not $env:TARGET ) { $env:TARGET = "$env:ARCH-$env:PLATFORM" }
if ( -not $env:TOOLCHAIN_NAME ) { $env:TOOLCHAIN_NAME = "$env:ARCH-$env:PLATFORM-$env:CRT" }

if ( -not $env:SOURCE_PATH ) { $env:SOURCE_PATH= "$PWD\code" }
if ( -not $env:BUILD_PATH ) { $env:BUILD_PATH = "$PWD\build-$env:TOOLCHAIN_NAME" }
if ( -not $env:ARTIFACT_PATH ) { $env:ARTIFACT_PATH = "$PWD\artifact" }
if ( -not $env:PERL_PATH ) { $env:PERL_PATH = "C:\Strawberry\perl\bin" }

if ( -not $env:ZLIB_PATH ) { $env:ZLIB_PATH = "$PWD\zlib" }
if ( -not $env:OPENBLAS_TESTS_PATH ) { $env:OPENBLAS_TESTS_PATH = "$PWD\openblas-tests" }
if ( -not $env:OPENSSL_TESTS_PATH ) { $env:OPENSSL_TESTS_PATH = "$PWD\openssl-tests" }
if ( -not $env:LIBJPEG_TURBO_TESTS_PATH ) { $env:LIBJPEG_TURBO_TESTS_PATH = "$PWD\libjpeg-turbo-tests" }
if ( -not $env:FFMPEG_TESTS_PATH ) { $env:FFMPEG_TESTS_PATH = "$PWD\ffmpeg-tests" }

if ( -not $env:RUNTIME_PACKAGE_NAME ) { $env:RUNTIME_PACKAGE_NAME = "$env:TOOLCHAIN_NAME-runtime.tar.gz" }
if ( -not $env:TESTS_PACKAGE_NAME ) { $env:TESTS_PACKAGE_NAME = "$env:TOOLCHAIN_NAME-tests.tar.gz" }

$env:PATH += ";$env:TOOLCHAIN_PATH\bin;$env:ARTIFACT_PATH\bin"

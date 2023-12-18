Set-PSDebug -Trace 2 # echo on

if ( -not $env:OPENBLAS_VERSION ) { $env:OPENBLAS_VERSION = "openblas-develop" }
if ( -not $env:OPENSSL_VERSION ) { $env:OPENSSL_VERSION = "openssl-master" }
if ( -not $env:LIBJPEG_TURBO_VERSION) { $env:LIBJPEG_TURBO_VERSION="libjpeg-turbo-main" }

if ( -not $env:TARGET ) { $env:TARGET = "aarch64-w64-mingw32" }
if ( -not $env:CRT ) { $env:CRT = "msvcrt" }
if ( -not $env:TOOLCHAIN_NAME ) { $env:TOOLCHAIN_NAME = "$TARGET-$CRT" }

if ( -not $env:SOURCE_PATH ) { $env:SOURCE_PATH= "$PWD\code" }
if ( -not $env:BUILD_PATH ) { $env:BUILD_PATH = "$PWD\build-$env:TOOLCHAIN_NAME" }
if ( -not $env:ARTIFACT_PATH ) { $env:ARTIFACT_PATH = "$PWD\artifact" }
if ( -not $env:PERL_PATH ) { $env:PERL_PATH = "C:\Strawberry\perl\bin" }

if ( -not $env:ZLIB_PATH ) { $env:ZLIB_PATH = "$PWD\zlib" }
if ( -not $env:OPENBLAS_TESTS_PATH ) { $env:OPENBLAS_TESTS_PATH = "$PWD\openblas-tests" }
if ( -not $env:OPENSSL_TESTS_PATH ) { $env:OPENSSL_TESTS_PATH = "$PWD\openssl-tests" }
if ( -not $env:LIBJPEG_TURBO_TESTS_PATH ) { $env:LIBJPEG_TURBO_TESTS_PATH = "$PWD\libjpeg-turbo-tests" }

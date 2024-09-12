. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack zlib"
    Remove-Item $env:ZLIB_PATH  -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-zlib.zip -DestinationPath $env:ZLIB_PATH
    Copy-Item $env:ZLIB_PATH/bin/*.dll $env:OPENSSL_TESTS_PATH/apps/
    Copy-Item $env:ZLIB_PATH/bin/*.dll $env:OPENSSL_TESTS_PATH/test/
Write-Output "::endgroup::"

Write-Output 'Success!'

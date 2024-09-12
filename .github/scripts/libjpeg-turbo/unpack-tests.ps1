. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack libjpeg-turbo tests"
    Remove-Item $env:LIBJPEG_TURBO_TESTS_PATH -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-libjpeg-turbo-tests.zip -DestinationPath $env:LIBJPEG_TURBO_TESTS_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

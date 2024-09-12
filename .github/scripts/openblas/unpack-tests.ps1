. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack OpenBLAS tests"
    Remove-Item $env:OPENBLAS_TESTS_PATH -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-openblas-tests.zip -DestinationPath $env:OPENBLAS_TESTS_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

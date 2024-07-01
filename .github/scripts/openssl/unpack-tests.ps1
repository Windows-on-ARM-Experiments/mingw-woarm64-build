. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack OpenSSL tests"
    Remove-Item $env:OPENSSL_TESTS_PATH -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-openssl-tests.zip -DestinationPath $env:OPENSSL_TESTS_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

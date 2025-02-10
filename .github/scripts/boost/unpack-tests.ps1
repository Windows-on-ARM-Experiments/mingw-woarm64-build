. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack Boost tests"
    Remove-Item $env:BOOST_TESTS_PATH -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-boost-tests.zip -DestinationPath $env:BOOST_TESTS_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

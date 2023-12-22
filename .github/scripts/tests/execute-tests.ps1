. $PSScriptRoot\..\config.ps1

Write-Output '::group::Test toolchain'
    & $env:ARTIFACT_PATH\aarch64-mingw-tests.exe
Write-Output "::endgroup::"

. $PSScriptRoot\..\config.ps1

Write-Output '::group::Test toolchain'
    & $env:ARTIFACT_PATH\$env:TARGET-tests.exe
Write-Output "::endgroup::"

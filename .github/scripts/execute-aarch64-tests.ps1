. $PSScriptRoot\config.ps1

Write-Output '::group::Test libjpeg-turbo'
    & $env:GITHUB_WORKSPACE\aarch64-mingw-tests.exe
Write-Output "::endgroup::"

Write-Output 'Success!'

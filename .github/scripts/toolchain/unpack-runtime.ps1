. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack runtime"
    tar xzf $env:ARTIFACT_PATH\$env:RUNTIME_PACKAGE_NAME -C $env:ARTIFACT_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

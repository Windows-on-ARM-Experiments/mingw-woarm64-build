. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack tests"
    tar xzf $env:ARTIFACT_PATH\$env:TESTS_PACKAGE_NAME -C $env:ARTIFACT_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

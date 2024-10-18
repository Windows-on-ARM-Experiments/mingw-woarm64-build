
. $PSScriptRoot\config.ps1

Write-Output "::group::Install zstd"
        Invoke-WebRequest https://github.com/facebook/zstd/releases/download/v1.5.2/zstd-v1.5.2-win64.zip -OutFile $env:RUNNER_TEMP\zstd.zip
        Expand-Archive $env:RUNNER_TEMP\zstd.zip -DestinationPath $env:RUNNER_TEMP
        Add-Content $env:GITHUB_PATH "$env:RUNNER_TEMP\zstd-v1.5.2-win64"
Write-Output "::endgroup::"

Write-Output 'Success!'

. $PSScriptRoot\config.ps1

Write-Output '::group::Test FFmpeg'
    Push-Location $env:FFMPEG_TESTS_PATH
    & "C:\Program Files\Git\bin\bash.exe" -c "make fate-rsync SAMPLES=fate-suite/"
    & "C:\Program Files\Git\bin\bash.exe" -c "make fate SAMPLES=fate-suite/"
    Pop-Location
Write-Output "::endgroup::"

Write-Output 'Success!'

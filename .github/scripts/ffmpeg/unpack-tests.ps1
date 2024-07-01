. $PSScriptRoot\..\config.ps1

Write-Output "::group::Unpack FFmpeg tests"
    Remove-Item $env:FFMPEG_TESTS_PATH -Recurse -Force -ErrorAction Ignore
    Set-PSDebug -Trace 0 # echo off
    Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-ffmpeg-tests.zip -DestinationPath $env:FFMPEG_TESTS_PATH
Write-Output "::endgroup::"

Write-Output 'Success!'

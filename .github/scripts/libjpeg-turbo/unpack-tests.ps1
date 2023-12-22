. $PSScriptRoot\..\config.ps1

Remove-Item $env:LIBJPEG_TURBO_TESTS_PATH -Recurse -Force -ErrorAction Ignore
Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-libjpeg-turbo-tests.zip -DestinationPath $env:LIBJPEG_TURBO_TESTS_PATH

. $PSScriptRoot\config.ps1

Remove-Item $env:OPENBLAS_TESTS_PATH -Recurse -Force -ErrorAction Ignore
Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-openblas-tests.zip -DestinationPath $env:OPENBLAS_TESTS_PATH

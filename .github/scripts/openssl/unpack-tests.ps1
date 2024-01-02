. $PSScriptRoot\..\config.ps1

Remove-Item $env:OPENSSL_TESTS_PATH -Recurse -Force -ErrorAction Ignore
Expand-Archive -LiteralPath $env:ARTIFACT_PATH\$env:TOOLCHAIN_NAME-openssl-tests.zip -DestinationPath $env:OPENSSL_TESTS_PATH

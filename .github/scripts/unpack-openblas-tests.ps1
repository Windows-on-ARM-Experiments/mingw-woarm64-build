Remove-Item $env:OPENBLAS_TESTS_PATH -Recurse -Force -ErrorAction Ignore
Expand-Archive -LiteralPath $env:TOOLCHAIN_NAME-openblas-tests.zip -DestinationPath $env:OPENBLAS_TESTS_PATH

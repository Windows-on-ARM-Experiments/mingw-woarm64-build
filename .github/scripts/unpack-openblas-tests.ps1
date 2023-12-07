Remove-Item $env:OPENBLAS_TESTS_PATH -Recurse -Force -ErrorAction Ignore
Expand-Archive -LiteralPath aarch64-msvcrt-openblas-tests.zip -DestinationPath $env:OPENBLAS_TESTS_PATH

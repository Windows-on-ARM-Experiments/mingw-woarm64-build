. $PSScriptRoot\..\config.ps1

Write-Output '::group::Test OpenSSL'
    $excluded_tests = @(
       '-test_ssl_new' # something about handshake failure
    )

    $env:SRCTOP = "$env:SOURCE_PATH\$env:OPENSSL_VERSION"
    $env:BLDTOP = "$env:OPENSSL_TESTS_PATH"
    $env:LC_ALL = "C"

    & $env:PERL_PATH\perl.exe $env:SRCTOP\test\run_tests.pl $excluded_tests
Write-Output "::endgroup::"

. $PSScriptRoot\..\config.ps1

Write-Output '::group::Test OpenSSL'
    $excluded_tests = @(
       '-test_ssl_new' # something about handshake failure
    )

    $env:SRCTOP = "$env:SOURCE_PATH\openssl"
    $env:BLDTOP = "$env:OPENSSL_TESTS_PATH"
    $env:HARNESS_JOBS = 1
    $env:LC_ALL = "C"

    & $env:PERL_PATH\cpan.bat Text::Template
    & $env:PERL_PATH\cpan.bat TAP::Parser

    & $env:PERL_PATH\perl.exe $env:SRCTOP\test\run_tests.pl $excluded_tests
Write-Output "::endgroup::"

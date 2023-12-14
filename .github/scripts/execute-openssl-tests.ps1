. $PSScriptRoot\config.ps1

Write-Output '::group::Test OpenSSL'
    $excluded_tests = @(
        '-test_bio_comp' # binary is missing (needs compression support)
        '-test_ec' # missing fipsmodule.cnf
        '-test_ecparam' # missing fipsmodule.cnf
        '-test_dhparam' # missing fipsmodule.cnf
        '-test_tls13certcomp' # extensions count mismatch
        '-test_ssl_new' # something about handshake failure
        '-test_verify' # bad plan
    )

    $env:SRCTOP = "$env:SOURCE_PATH\$env:OPENSSL_VERSION"
    $env:BLDTOP = "$env:OPENSSL_TESTS_PATH"
    $env:LC_ALL = "C"

    & $env:PERL_PATH\perl.exe $env:SRCTOP\test\run_tests.pl $excluded_tests
Write-Output "::endgroup::"

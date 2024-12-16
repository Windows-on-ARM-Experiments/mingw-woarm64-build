. $PSScriptRoot\..\config.ps1

$FILTER = $args[0]

Write-Output '::group::Test libjpeg-turbo'
    $EXCLUDED_TESTS = '^' + (@(
        '.*-cp' # just testing data copy, already done on Linux during build
    ) -join '|') + '$'

    if ($FILTER) {
       $FILTER = @("-E", $EXCLUDED_TESTS, "-R", $FILTER)
    } else {
       $FILTER = @("-E", $EXCLUDED_TESTS)
    }

    Push-Location $env:LIBJPEG_TURBO_TESTS_PATH
        & ctest ($env:TEST_CMAKE_OPTIONS -split ' ') $FILTER
    Pop-Location
Write-Output "::endgroup::"

Write-Output 'Success!'

. $PSScriptRoot\config.ps1

Write-Output '::group::Test libjpeg-turbo'
    $excluded_tests = '^' + (@(
        '.*-cp' # just testing data copy, already done on Linux during build
    ) -join '|') + '$'

    $jobs = (Get-WmiObject -Class Win32_ComputerSystem).NumberOfLogicalProcessors

    Push-Location $env:LIBJPEG_TURBO_TESTS_PATH
    & ctest -E $excluded_tests -j $jobs
    Pop-Location
Write-Output "::endgroup::"

Write-Output 'Success!'

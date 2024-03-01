Write-Output "::group::Processes before"
    tasklist
Write-Output "::endgroup::"

taskkill /t /f /om conftest.exe
taskkill /t /f /im cc1.exe
taskkill /t /f /im pacman.exe
taskkill /t /f /im make.exe
taskkill /t /f /im wc.exe
taskkill /t /f /im gpg.exe
taskkill /t /f /im gpg-agent.exe
taskkill /t /f /im bash.exe
taskkill /t /f /im sh.exe

Write-Output "::group::Processes after"
    tasklist
Write-Output "::endgroup::"

exit 0

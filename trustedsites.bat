@Echo off&title gworks
set "a=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\"
set b=*.beml.com
reg add "%a%%b%" /v https /t REG_DWORD /d 2 /f >nul 2>nul
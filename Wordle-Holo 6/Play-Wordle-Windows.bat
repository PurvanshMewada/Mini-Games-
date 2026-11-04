@echo off
rem Opens Wordle in its own window (no tabs, no address bar) using Edge, Chrome or Brave.
set "URL=file:///%~dp0index.html"
set "URL=%URL:\=/%"
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%URL%" --window-size=1100,860 & exit /b
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%URL%" --window-size=1100,860 & exit /b
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%URL%" --window-size=1100,860 & exit /b
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="%URL%" --window-size=1100,860 & exit /b
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" --app="%URL%" --window-size=1100,860 & exit /b
if exist "%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe" start "" "%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe" --app="%URL%" --window-size=1100,860 & exit /b
echo Could not find Edge, Chrome or Brave. Opening in your default browser instead.
start "" "%~dp0index.html"
pause

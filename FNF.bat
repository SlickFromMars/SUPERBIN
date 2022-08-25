@echo off
echo Installing Psych Engine...
echo.

start chrome https://github.com/ShadowMario/FNF-PsychEngine/releases/download/0.6.2/PsychEngine-Windows64.zip
echo ZIP has been downloaded.

echo Installation complete. Have fun!
pause
explorer.exe %USERPROFILE%\Downloads
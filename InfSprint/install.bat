@echo off
title LC Mod (InfSprint) Installer

set /p lcpath= Lethal Company Path (where the exe is): 
if NOT EXIST %lcpath%\BepInEx\plugins goto :BepInInstall

echo Copying...
copy BepInEx\plugins\Mod.LC.BenjiSkye15.InfSprint.dll %lcpath%\BepInEx\plugins
echo Done!
pause
exit

:BepInInstall
echo BepInEx not found. Installing...
timeout /NOBREAK 5 >nul
cls
start BepInInstall.bat
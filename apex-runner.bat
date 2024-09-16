@ECHO OFF

REM if you are using dx11 then apex needs to be set to r5apex.exe, if you are using dx12 it needs to be r5apex_dx12.exe
SET apex=r5apex_dx12.exe

REM this is path to where apex exe is
SET apexPath=C:\Steam\steamapps\common\Apex Legends\

REM Things to start back up after Apex is turend off, you can add more variables here for multiple scripts and then add multiple starts at the end
SET script1=C:\path\to\your\script.ahk


ECHO Killing all running AHK stuff:
TASKKILL /IM AutoHotkeyU64*

ECHO Starting Apex: %apex%
START "" "%apexPath%%apex%"

ECHO Waiting for Apex to start before we start checking if its still on:
timeout 30

ECHO Loop check every 15s if apex is still on:
:LOOP
tasklist | find /i "%apex%" >nul 2>&1
IF ERRORLEVEL 1 (
  GOTO CONTINUE
) ELSE (
  ECHO Apex is still running
  Timeout /T 15 /Nobreak
  GOTO LOOP
)

:CONTINUE
Echo Apex is off, turning AHK stuff back on:
Start "" "%script1%"


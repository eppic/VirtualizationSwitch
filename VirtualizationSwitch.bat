@echo off
title VirtualizationSwitch (by eppic)
:top
cls

set operation=
echo RUN AS ADMINISTRATOR!
echo.
echo (1) ON
echo (0) OFF
echo.

set /P operation=TURN VIRTUALIZATION ON OR OFF:
if "%operation%"=="1" goto fopON
if "%operation%"=="0" goto fopOFF
goto top

:fopON
bcdedit /set hypervisorlaunchtype auto start
pause
goto top

:fopOFF
bcdedit /set hypervisorlaunchtype off
pause
goto top
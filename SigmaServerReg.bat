@echo off
title SigmaStudio COM Server Registration
set /p SSVER="Enter SigmaStudio version (e.g., 4.0, 3.17, etc): "
set /p MVER="Enter MATLAB bit version (32 or 64): "
set OLDPATH=%CD%

if %MVER%==32 if %SSVER% leq 16 cd C:\Windows\Microsoft.NET\Framework\v2.0.50727 && RegAsm "C:\Program Files\Analog Devices\SigmaStudio %SSVER%\Analog.SigmaStudioServer.dll" /codebase
if %MVER%==64 if %SSVER% leq 16 cd C:\Windows\Microsoft.NET\Framework64\v2.0.50727 && RegAsm "C:\Program Files\Analog Devices\SigmaStudio %SSVER%\Analog.SigmaStudioServer.dll" /codebase

if %MVER%==32 if %SSVER% geq 17 cd C:\Windows\Microsoft.NET\Framework\v4.0.30319 && RegAsm "C:\Program Files\Analog Devices\SigmaStudio %SSVER%\Analog.SigmaStudioServer.dll" /codebase
if %MVER%==64 if %SSVER% geq 17 cd C:\Windows\Microsoft.NET\Framework64\v4.0.30319 && RegAsm "C:\Program Files\Analog Devices\SigmaStudio %SSVER%\Analog.SigmaStudioServer.dll" /codebase
pause
cd %OLDPATH%

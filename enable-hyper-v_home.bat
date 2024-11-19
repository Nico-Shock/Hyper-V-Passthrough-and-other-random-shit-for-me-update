@echo off
:: Überprüfen, ob das Skript mit Administratorrechten ausgeführt wird
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Administratorrechte erforderlich. Versuche das Skript als Administrator neu zu starten...
    powershell -Command "Start-Process cmd -Argument '%~s0' -Verb RunAs"
    exit /B
)

pushd "%~dp0"

:: Hyper-V und Virtualisierungs-Features installieren
dir /b %SystemRoot%\servicing\Packages\*Hyper-V*.mum >hyper-v.txt
for /f %%i in ('findstr /i . hyper-v.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
del hyper-v.txt

:: Aktivierung der wichtigsten Virtualisierungs- und Hyper-V-Features
Dism /online /enable-feature /featurename:Microsoft-Hyper-V-All /LimitAccess /ALL
Dism /online /enable-feature /featurename:VirtualMachinePlatform /all /LimitAccess /ALL
Dism /online /enable-feature /featurename:Microsoft-Hyper-V-Management-PowerShell /all /LimitAccess /ALL
Dism /online /enable-feature /featurename:HypervisorPlatform /all /LimitAccess /ALL
Dism /online /enable-feature /featurename:WindowsSandbox /all /LimitAccess /ALL

:: Befehl ausführen, um den Hypervisor beim nächsten Systemstart zu aktivieren
bcdedit /set hypervisorlaunchtype auto

:: Hinweis, dass der Hypervisor aktiv ist und das System neu gestartet werden muss
echo Alle erforderlichen Virtualisierungs- und Hyper-V-Features wurden aktiviert. Ein Neustart des Systems ist erforderlich, um die Änderungen zu übernehmen.
pause

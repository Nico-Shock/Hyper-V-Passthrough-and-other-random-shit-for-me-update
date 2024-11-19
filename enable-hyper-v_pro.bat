@echo off
:: Überprüfen, ob das Skript als Administrator ausgeführt wird
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administratorrechte erforderlich. Versuche das Skript als Administrator neu zu starten...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Aktiviert alle benötigten Features
echo Aktiviere Hyper-V, VirtualMachinePlatform, HypervisorPlatform und WindowsSandbox...

dism /online /enable-feature /featurename:Microsoft-Hyper-V-All /all /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
dism /online /enable-feature /featurename:HypervisorPlatform /all /norestart
dism /online /enable-feature /featurename:WindowsSandbox /all /norestart

:: Setzt den Hypervisor-Starttyp auf "auto"
echo Setze Hypervisor-Starttyp auf auto...
bcdedit /set hypervisorlaunchtype auto

echo Alle Features wurden erfolgreich aktiviert.
pause

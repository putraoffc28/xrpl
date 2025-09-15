@echo off
echo ==================================================
echo   AUTO INSTALL KALI LINUX DI WINDOWS 11 (WSL2)
echo ==================================================
echo [1] Mengaktifkan WSL dan Virtual Machine Platform...
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo [2] Set WSL default ke versi 2...
wsl --set-default-version 2

echo [3] Update WSL ke versi terbaru...
wsl --update

echo [4] Install Kali Linux dari Microsoft Store...
wsl --install -d kali-linux

echo ==================================================
echo Selesai! Kalau diminta restart, silakan restart dulu.
echo Setelah restart jalankan: wsl -d kali-linux
echo ==================================================
pause

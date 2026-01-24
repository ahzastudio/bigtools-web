@echo off
cd /d "%~dp0"
echo ==========================================
echo      BIG TOOLS WEB - INSTALLER
echo ==========================================
echo.
echo [INFO] Menambahkan Node.js ke PATH...
set "PATH=%PATH%;C:\Program Files\nodejs"

echo [INFO] Memeriksa versi NPM...
call npm -v
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] NPM tidak ditemukan! Pastikan Node.js terinstal di C:\Program Files\nodejs
    pause
    exit /b 1
)

echo.
echo [INFO] Menginstal dependensi (ini mungkin memakan waktu)...
echo.
call npm install
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Gagal menginstal dependensi. Lihat pesan di atas.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] Instalasi selesai!
echo Sekarang jalankan 'start_dev.bat'.
echo.
pause

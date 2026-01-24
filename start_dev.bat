@echo off
cd /d "%~dp0"
echo ==========================================
echo      BIG TOOLS WEB - DEV SERVER
echo ==========================================
echo.
set "PATH=%PATH%;C:\Program Files\nodejs"

if not exist "node_modules" (
    echo [ERROR] Folder node_modules tidak ditemukan!
    echo Silakan jalankan 'install_deps.bat' terlebih dahulu.
    pause
    exit /b 1
)

echo [INFO] Menjalankan server lokal...
echo Buka browser di: http://localhost:4321
echo.
call npm run dev

pause

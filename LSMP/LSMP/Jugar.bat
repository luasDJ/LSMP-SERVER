@echo off
setlocal
cd /d "%~dp0"
title Launcher LSMP

:inicio
cls
echo ========================================
echo            BIENVENIDO A LSMP
echo ========================================
echo.

set /p NICK="Introduce tu Nick para jugar: "

if "%NICK%"=="" (
    echo [ERROR] Debes escribir un nombre para continuar.
    pause
    goto inicio
)

echo.
echo Iniciando Minecraft como: %NICK%...
echo.

portablemc --main-dir . start --username "%NICK%" fabric:1.21.11

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] El juego se cerro o hubo un problema.
    pause
)

endlocal
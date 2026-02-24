@echo off
setlocal enabledelayedexpansion

REM === File sorgente da copiare ===
set "source=zxs.png"

REM Controllo esistenza file sorgente
if not exist "%source%" (
    echo Il file "%source%" non esiste nella cartella corrente.
    pause
    exit /b
)

REM Ciclo su tutti i PNG della cartella
for %%f in (*.png) do (
    if /I not "%%f"=="%source%" (
        copy /Y "%source%" "%%f" >nul
        echo Sostituito: %%f
    )
)

echo Operazione completata.
pause

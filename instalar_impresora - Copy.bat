@echo off
set impresora = 
echo Ingresa el nombre de la impresora: 
set /p impresora=

net view \\mormsysoft01 | findstr /i /C:%impresora% > nul
if %errorlevel% == 0 (
    goto instalar
) else (
    echo Error: La impresora no se encontro en el PrintServer
    pause
    goto fin
)

:instalar
rundll32 printui.dll,PrintUIEntry /in /n \\mormsysoft01\%impresora%
if %errorlevel% == 0 (
    echo La impresora se instalo correctamente.
)else(
    echo Error al instalar la impresora
)

pause
goto fin

:fin
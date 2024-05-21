@echo off

set /p user=Ingresa tu usuario: 
runas /user:AVONSA\%user% "explorer \\mormsysoft01"
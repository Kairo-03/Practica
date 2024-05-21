@echo off
set /p printername=Enter printer name: 
runas /user:AVONSA\frsa1kf2 "rundll32 printui.dll,PrintUIEntry /ga /n\\mormsysoft01\%printername%"
@echo off
echo Copia archivo SICF* al servidor DELTA19
echo.
copy /Z \\sapdatamx\sapdata\interfaces\fi\Corporativo\sicf*.txt \\delta19.gruma.com\DM_Finanzas\Corporativo\Fuentes 

:begin
@echo off
echo Copia archivo Interface Active Directoty
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
echo.
if not exist \\molmex1201\sapinterface\SAPFile.csv goto FIN
copy \\molmex1201\sapinterface\SAPFile.csv \\sapdatatx\sapdata\interfaces\HR
copy \\molmex1201\sapinterface\SAPFile.csv \\sapdatatx\sapdata\interfaces\HR\archive
echo Se copió el archivo con éxito.
Exit
:FIN
echo No se encontró el archivo SAPFile.csv

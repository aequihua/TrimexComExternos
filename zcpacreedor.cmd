@echo off
echo Copia archivos acreedores FI.
echo.
if not exist \\sapdatamx\sapdata\interfaces\fi\acreedores.txt goto ERROR
copy \\sapdatamx\sapdata\interfaces\fi\acreedores.txt \\gruma1023.grumamex.com\ftproot$\CargaAcreedores.txt
move \\sapdatamx\sapdata\interfaces\fi\acreedores.txt \\sapdatamx\sapdata\interfaces\fi\archive
goto Fin
:Error
 echo No exite el archivo acreedores.txt
:Fin
echo.
echo Fin comando.

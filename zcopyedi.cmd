:begin
@echo off
REM copia archivos de W:\interfaces\EDI\purchaseorders a \\colinas03\g\purchasing_idocs
echo.
w:
cd \interfaces\EDI\purchaseorders
set Fecha=%DATE%
set Hora=%TIME%
set zipfile=%~n1.zip
echo %Fecha% %Hora%
  copy *.* \\colinas03\g\purchasing_idocs
  move *.* backups
echo  Termina copia de archivos a \\colinas03\g\purchasing_idocs
echo  Inicio: %Fecha% % Hora%   Termino: %DATE% %TIME%
:begin
@echo off
echo Envio archivos 940weber.txt a \\Colinas03\penske
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
if not exist w:\edi\940weber.txt goto Error
  copy w:\edi\940weber.txt \\colinas03.missionfoods.com\penske\940weber.txt
move w:\edi\940weber.txt w:\edi\archive\940weber.txt
goto End
:Error
   echo "Error: No existe el archivo 940weber.txt"
:End
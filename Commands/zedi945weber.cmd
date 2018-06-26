:begin
@echo off
echo "  GET \\COLINAS03\PENSKE\945weber.txt"
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
if not exist \\colinas03.missionfoods.com\penske\945weber.txt goto Error
  copy \\colinas03.missionfoods.com\penske\945weber.txt w:\edi\945weber.txt 
goto End
:Error
   echo "Error: No existe el archivo \\colinas03\penske\945weber.txt"
:End
:begin
@echo off
REM     creado por ccaceres el 2/08/05 a solicitud de Saul Quintanilla.
REM	Envio archivos de uscoldstore940.cmd a \\Colinas03\penske
w:
cd edi
if not exist uscoldstore940.txt goto Error
  move uscoldstore940.txt \\colinas03.missionfoods.com\penske
goto END
:Error
   echo "No existe el archivo uscoldstore940.txt"
:END
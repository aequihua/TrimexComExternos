:begin
@echo off
echo Envio archivos de w:\edi\fromsap\data a \\Colinas03\penske_testin
w:
cd w:\edi\fromsap\data\penske

rem --------------Las siguientes son las lineas originales:------------------
rem copy penske-new.txt \\colinas03.missionfoods.com\penske
rem move penske-new.txt ..\archive
rem -------------- Cambiadas por las siguientes el 8-Enero-07----------------
rem incidente:  117576
if not exist penske* goto NOFILE
copy penske-test* \\colinas03.missionfoods.com\penske_testin
move penske-test* ..\archive
GOTO FIN
:NOFILE
echo CAN NOT Find the file specified.
:FIN
echo END of command ZEDIPENSKE2

:begin
@echo off
REM	Envio archivos walmart a \\Colinas03\penske
w:
cd w:\edi\fromsap\data\walmart
copy *.txt \\colinas03.missionfoods.com\penske
move *.txt ..\archive
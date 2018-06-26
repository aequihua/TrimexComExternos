:begin
@echo off
REM	Envio archivos de Biglots a \\Colinas03\penske
w:
cd w:\edi\fromsap\data\biglots
copy *.dat \\colinas03.missionfoods.com\penske
del *.dat
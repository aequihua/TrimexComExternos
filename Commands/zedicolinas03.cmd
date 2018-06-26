:begin
@echo off
REM    Obtiene archivo de snyders.zip de \\Colinas03.missionfoods.com\idocs\snyders
if exist \\colinas03.missionfoods.com\idocs\snyders\snyders.zip goto :copia
echo "No fué posible tener acceso al archivo \\colinas03\idocs\snyders\snyders.zip"
goto :end

:copia
w:
cd gateways\edi
if exist snyders.txt del snyders.txt
copy \\colinas03.missionfoods.com\idocs\snyders\snyders.zip w:\gateways\edi
e:\osctools\winzip\wzunzip snyders.zip

:end
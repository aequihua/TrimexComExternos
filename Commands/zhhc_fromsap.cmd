:begin
@echo off
REM copia archivos fromsap to sapoutbound
echo.
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
set Archivos=hhccustomer.dat hhcdept.dat hhcdex.dat hhcmaterial.dat hhcorderrea.dat hhcpricecon.dat hhcpriceinf.dat hhcroute.dat hhcrouting.dat
if "%1" == "1002" goto SOCAL
if "%1" == "1026" goto FRESNO
if "%1" == "1036" goto DIANES
if "%1" == "1050" goto TEMPE
if "%1" == "1053" goto LAKE
if "%1" == "1070" goto NDAL
if "%1" == "1079" goto DENVER
if "%1" == "1083" goto JEFF
if "%1" == "1016" goto GRO
if "%1" == "1016M" goto MGRO
if "%1" == "1016m" goto MGRO
:ERROR1
echo ERROR == Use a valid Plant number.
goto FIN
:MGRO
echo 	G R O M		-- SOC2
Set Fuente=\gateways\1016\fromsap
set Destino=\\hhcgwsoc2.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:GRO
echo 	G R O
Set Fuente=\gateways\1016\fromsap
set Destino=\\gro_winrez.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:SOCAL
echo 	S O C A L	-- SOC1
Set Fuente=\gateways\1002\fromsap
set Destino=\\hhcgwsoc1.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:FRESNO
echo	F R E S N O	-- NOCA
Set Fuente=\gateways\1026\fromsap
set Destino=\\hhcgwnoca.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:DIANES
echo	D I A N E S	-- PCNW
Set Fuente=\gateways\1036\fromsap
set Destino=\\hhcgwpcnw.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:TEMPE
echo	T E M P E	-- ARIZ
Set Fuente=\gateways\1050\fromsap
set Destino=\\hhcgwariz.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:LAKE
echo	L A K E
Set Fuente=\gateways\1053\fromsap
set Destino=\\lakeftp_winrez.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:NDAL
echo	N D A L
Set Fuente=\gateways\1070\fromsap
set Destino=\\HHCGWTEX1.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:DENVER
echo	D E N V E R
Set Fuente=\gateways\1079\fromsap
set Destino=\\HHCGWNCEN.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
goto FIN
:JEFF
echo	J E F F
Set Fuente=\gateways\1083\fromsap
set Destino=\\HHCGWEAST.missionfoods.com\sapoutbound
cd %Fuente%
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i .\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)
:FIN
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%

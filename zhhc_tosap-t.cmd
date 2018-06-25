:begin
@echo off
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
if "%1" == "1002" goto SOCAL
if "%1" == "1026" goto FRESNO
if "%1" == "1036" goto DIANES
if "%1" == "1050" goto TEMPE
if "%1" == "1053" goto LAKE
if "%1" == "1070" goto NDAL
if "%1" == "1079" goto DENVER
if "%1" == "1083" goto JEFF
if "%1" == "1016M" goto GRO1016M
if "%1" == "1016m" goto GRO1016M
if "%1" == "101601" goto 1GRO
if "%1" == "101602" goto 2GRO
if "%1" == "101601M" goto M1GRO
if "%1" == "101602M" goto M2GRO
:ERROR1
echo Use a valid plant.
goto FIN
:GRO1016M
echo 	G R O 1016M	-- SOC2
REM copia archivos de \\hhcgwsoc2\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\1016\tosap\SAPORD.dat
REM copia archivos de \\hhcgwsoc2\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\1016\tosap\SAPINV.dat
move /Y \\hhcgwsoc2.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1016\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1016\tosap\orders\SAPIN_Orders*.dat \\hhcgwsoc2.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\hhcgwsoc2.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1016\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1016\tosap\invoices\SAPIN_Invoices*.dat \\hhcgwsoc2.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:M2GRO
echo 	G R O 02 M
REM copia archivos de \\SOCALFTP_WINREZ\sapinbound\SAPIN_Orders02.dat a \\gruma1008\sapdata\gateways\1016\tosap\SAPORD2.dat
copy \\SOCALFTP_WINREZ.missionfoods.com\sapinbound\SAPIN_Orders02.dat .\gateways\1016\tosap\SAPORD2.dat
goto FIN
:1GRO
echo 	G R O 01
REM copia archivos de \\gro_winrez\sapinbound\SAPIN_Orders01.dat a \\gruma1008\sapdata\gateways\1016\tosap\SAPORD1.dat
copy \\gro_winrez.missionfoods.com\sapinbound\SAPIN_Orders01.dat .\gateways\1016\tosap\SAPORD1.dat
goto FIN
:2GRO
echo 	G R O 02
REM copia archivos de \\gro_winrez\sapinbound\SAPIN_Orders02.dat a \\gruma1008\sapdata\gateways\1016\tosap\SAPORD2.dat
copy \\gro_winrez.missionfoods.com\sapinbound\SAPIN_Orders02.dat .\gateways\1016\tosap\SAPORD2.dat
goto FIN
:GRO
echo 	G R O
REM copia archivos de \\gro_winrez\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\gro_winrez\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
copy \\gro_winrez.missionfoods.com\sapinbound\SAPIN_Orders.dat .\gateways\1016\tosap\SAPORD.dat
copy \\gro_winrez.missionfoods.com\sapinbound\SAPIN_Invoices.dat .\gateways\1016\tosap\SAPINV.dat
goto FIN
:SOCAL
echo 	S O C A L	-- SOC1
REM copia archivos de \\hhcgwsoc1\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\hhcgwsoc1\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
move /Y \\hhcgwsoc1.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1002\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1002\tosap\orders\SAPIN_Orders*.dat \\hhcgwsoc1.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\hhcgwsoc1.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1002\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1002\tosap\invoices\SAPIN_Invoices*.dat \\hhcgwsoc1.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:FRESNO
echo 	F R E S N O	-- NOCA
REM copia archivos de \\hhcgwnoca.missionfoods.com\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\hhcgwnoca\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
REM SC XXXXX, cambio de servidor hhc en FRESNO.  
move /Y \\hhcgwnoca.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1026\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1026\tosap\orders\SAPIN_Orders*.dat \\hhcgwnoca.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\hhcgwnoca.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1026\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1026\tosap\invoices\SAPIN_Invoices*.dat \\hhcgwnoca.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:DIANES
echo 	D I A N E S	-- PCNW
REM copia archivos de \\hhcgwpcnw.missionfoods.com\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\hhcgwpcnw\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
REM SC XXXXX, cambio de servidor hhc en DIANES.  
move /Y \\hhcgwpcnw.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1036\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1036\tosap\orders\SAPIN_Orders*.dat \\hhcgwpcnw.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\hhcgwpcnw.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1036\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1036\tosap\invoices\SAPIN_Invoices*.dat \\hhcgwpcnw.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:TEMPE
echo 	T E M P E	-- ARIZ
REM copia archivos de \\hhcgwariz.missionfoods.com\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\hhcgwariz\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
REM SC 48018, cambio de servidor hhc en Tempe.  
move /Y \\hhcgwariz.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1050\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1050\tosap\orders\SAPIN_Orders*.dat \\hhcgwariz.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo --- SAPIN_Orders*.dat files cannot be found. ---
)
move /Y \\hhcgwariz.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1050\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1050\tosap\invoices\SAPIN_Invoices*.dat \\hhcgwariz.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo --- SAPIN_Invoices*.dat files cannot be found. ---
)
goto FIN
:LAKE
echo 	L A K E
REM copia archivos de \\lakeftp_winrez\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\lakeftp_winrez\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
copy \\lakeftp_winrez.missionfoods.com\sapinbound\SAPIN_Orders.dat .\gateways\1053\tosap\SAPORD.dat
copy \\lakeftp_winrez.missionfoods.com\sapinbound\SAPIN_Invoices.dat .\gateways\1053\tosap\SAPINV.dat
goto FIN
:NDAL
echo 	N D A L		-- TEX1
REM copia archivos de \\HHCGWTEX1\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\HHCGWTEX1\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
move /Y \\HHCGWTEX1.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1070\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1070\tosap\orders\SAPIN_Orders*.dat \\HHCGWTEX1.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\HHCGWTEX1.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1070\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1070\tosap\invoices\SAPIN_Invoices*.dat \\HHCGWTEX1.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:DENVER
echo 	D E N V E R	-- NCEN
REM copia archivos de \\HHCGWNCEN\sapinbound\SAPIN_Orders.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM copia archivos de \\HHCGWNCEN\sapinbound\SAPIN_Invoices.dat a \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
move /Y \\HHCGWNCEN.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1079\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1079\tosap\orders\SAPIN_Orders*.dat \\HHCGWNCEN.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Orders*.dat cannot be found.
)
move /Y \\HHCGWNCEN.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1079\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1079\tosap\invoices\SAPIN_Invoices*.dat \\HHCGWNCEN.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo The SAPIN_Invoices*.dat cannot be found.
)
goto FIN
:JEFF
echo 	J E F F 	-- EAST
REM move files \\HHCGWEAST\sapinbound\SAPIN_Orders.dat to \\gruma1008\sapdata\gateways\%1\tosap\SAPORD.dat
REM move files \\HHCGWEAST\sapinbound\SAPIN_Invoices.dat to \\gruma1008\sapdata\gateways\%1\tosap\SAPINV.dat
REM Cambio de servidor WO xxxx
move /Y \\HHCGWEAST.missionfoods.com\sapinbound\SAPIN_Orders*.dat .\gateways\1083\tosap\orders
if not errorlevel 1 (
   copy .\gateways\1083\tosap\orders\SAPIN_Orders*.dat \\HHCGWEAST.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo --- SAPIN_Orders*.dat files cannot be found. ---
)
move /Y \\HHCGWEAST.missionfoods.com\sapinbound\SAPIN_Invoices*.dat .\gateways\1083\tosap\invoices
if not errorlevel 1 (
   copy .\gateways\1083\tosap\invoices\SAPIN_Invoices*.dat \\HHCGWEAST.missionfoods.com\sapinbound\processed
)
if errorlevel 1 (
 echo --- SAPIN_Invoices*.dat files cannot be found. ---
)
:FIN
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%

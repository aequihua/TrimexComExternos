:begin
@echo off
REM copia archivos de \\tempe_winrez\sapinbound\SAPIN_Orders.dat a \\sapdataus\sapdata\gateways\1050\tosap\SAPORD.dat
REM copia archivos de \\tempe_winrez\sapinbound\SAPIN_Invoices.dat a \\sapdataus\sapdata\gateways\1050\tosap\SAPINV.dat
echo.
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
copy \\tempe_winrez.missionfoods.com\sapinbound\SAPIN_Orders.dat .\gateways\1050\tosap\SAPORD.dat
copy \\tempe_winrez.missionfoods.com\sapinbound\SAPIN_Invoices.dat .\gateways\1050\tosap\SAPINV.dat
echo.

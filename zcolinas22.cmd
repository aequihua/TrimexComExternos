:begin
@echo off
REM copia archivos de Business Queue a \\colinas22\sapfiles
echo.
w:
set Fecha=%DATE%
set Hora=%TIME%
set zipfile=%~n1.zip
echo %Fecha% %Hora%
echo %zipfile%
if "%1" == "MASTERS" goto masters
e:\osctools\winzip\wzzip %zipfile% @listzip.lst 2>&1 >.\S675\log\%~n1.log
if not errorlevel 1 (
  copy %zipfile% \\colinas22.missionfoods.com\sapfiles
  move %zipfile% .\S675\archive
  del custoutnew.txt matmast.txt matplantout.txt plantout.txt reasons.txt S6752*.txt S675TOT2*.txt slsoffout.txt vendorsout.txt ecinvoiceout.txt poundsprd.txt routes.txt banks.txt dropoff.txt Routing.txt zsmsop.txt zsmat.txt
  goto end
)
echo *** Error Detectado WINZIP ***
echo %errorlevel%
exit /B %errorlevel%
:masters
e:\osctools\winzip\wzzip %zipfile% @listmast.lst 2>&1 >.\S675\log\%~n1.log
if not errorlevel 1 (
  copy %zipfile% \\colinas22.missionfoods.com\sapfiles
  move %zipfile% .\S675\archive
  del custoutnew.txt matmast.txt matplantout.txt plantout.txt reasons.txt slsoffout.txt vendorsout.txt
  goto end
)
echo *** Error Detectado WINZIP ***
echo %errorlevel%
exit /B %errorlevel%
:end
echo * Termina copia de archivos a \\Colinas22\sapfiles
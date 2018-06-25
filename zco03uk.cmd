:begin
@echo off
REM	Envio archivos de ordenes de UK
w:
cd w:\edi\fromsap\data\
echo.
if "%1"=="" goto ERRPARAM
:getfile
if not exist "\\colinas03.missionfoods.com\G\EDIUK_Orders\%1" (
   echo filename %1 does not exist
   goto END
)
Copy \\colinas03.missionfoods.com\G\EDIUK_Orders\%1 w:
echo backup filename into Orders_bak
set format=%%Y%%m%%d%%H%%M
gawk "BEGIN{Format = \"set FECHA=%format%\";print strftime( Format, systime() )}" > formatd.bat
call formatd
del formatd.bat
set format=
echo %~n1%FECHA%%~x1
copy \\colinas03.missionfoods.com\G\EDIUK_Orders\%1 \\colinas03.missionfoods.com\G\EDIUK_Orders\Orders_bak\%~n1%FECHA%%~x1
del \\colinas03.missionfoods.com\G\EDIUK_Orders\%1
goto END
:ERRPARAM
echo use:  %0 filename
:END
echo.
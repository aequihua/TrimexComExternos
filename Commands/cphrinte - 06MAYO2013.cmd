@echo off
echo Copia archivos INTELEXION.
echo.
set format=%%d%%m%%Y%%H%%M
set path=e:\info\scripts\bin;%path%
e:\info\bin\gawk "BEGIN{Format = \"set FECHA=%format%\";print strftime( Format, systime() )}" > formatd.bat
call formatd
del formatd.bat
set format=
w:
cd W:\interfaces\HR\Intelexion
copy w:MX_SAP_employees.txt \\grumarh00.gruma.com\interfaces\MX_SAP_employees_%FECHA%.txt
copy w:MX_SAP_functions.txt \\grumarh00.gruma.com\interfaces\MX_SAP_functions_%FECHA%.txt
copy W:MX_SAP_positions.txt \\grumarh00.gruma.com\interfaces\MX_SAP_positions_%FECHA%.txt
move w:MX_SAP_employees.txt .\archive
move w:MX_SAP_functions.txt .\archive
move W:MX_SAP_positions.txt .\archive
echo.
echo Fin copia archivos INTELEXION.

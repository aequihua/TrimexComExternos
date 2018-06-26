@echo off
echo Copia archivos INTELEXION.
echo.
set format=%%d%%m%%Y%%H%%M
set path=e:\info\scripts\bin;%path%
e:\info\bin\gawk "BEGIN{Format = \"set FECHA=%format%\";print strftime( Format, systime() )}" > formatd.bat
call formatd
del formatd.bat
set format=
copy \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_employees.txt \\grumarh02.grumacntrl.com\interfaces\MX_SAP_employees_%FECHA%.txt
copy \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_functions.txt \\grumarh02.grumacntrl.com\interfaces\MX_SAP_functions_%FECHA%.txt
copy \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_positions.txt \\grumarh02.grumacntrl.com\interfaces\MX_SAP_positions_%FECHA%.txt
move \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_employees.txt \\sapdatamx\sapdata\interfaces\HR\Intelexion\archive
move \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_functions.txt \\sapdatamx\sapdata\interfaces\HR\Intelexion\archive
move \\sapdatamx\sapdata\interfaces\HR\Intelexion\MX_SAP_positions.txt \\sapdatamx\sapdata\interfaces\HR\Intelexion\archive
echo.
echo Fin copia archivos INTELEXION.

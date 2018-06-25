:begin
@echo off
echo Copia archivos por procesar SAP - INTELEXION.
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
echo.
w:
cd W:\interfaces\HR
if "%1" == "FAM" goto FAM
if "%1" == "fam" goto FAM
if "%1" == "DG" goto DG
if "%1" == "dg "goto DG
:ERROR
echo Error: Use a parameter "DG" or "FAM"
goto FIN
:DG
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" "w:\interfaces\HR\SAP_Mexico_DG.txt"
del "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt"
goto FIN
:FAM
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" "w:\interfaces\HR\SAP_Mexico_FAM.txt"
del "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt"
:FIN
echo Fin copia archivos INTELEXION.

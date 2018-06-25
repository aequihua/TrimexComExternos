:begin
@echo off
echo Copia archivos procesados SAP - INTELEXION.
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
echo.
if "%1" == "FAM" goto FAM
if "%1" == "fam" goto FAM
if "%1" == "DG" goto DG
if "%1" == "dg" goto DG
:ERROR
echo Error: use a parameter "DG" or "FAM"
goto FIN
:DG
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" \\grumarh00.gruma.com\interfaces\NuevaInt\Procesados
rename "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" "SAP Mexico_DG.txt"
goto SALIDA
:FAM
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" \\grumarh00.gruma.com\interfaces\NuevaInt\Procesados
rename "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" "SAP Mexico_FAM.txt"
:SALIDA
echo.
if not exist W:\interfaces\HR\LOGERRORES\ERRORESLogError* goto FIN
Move W:\interfaces\HR\LOGERRORES\LogErrores* \\grumarh00.gruma.com\interfaces\NuevaInt\ERRORES\
:FIN
echo Fin move archivos Procesados.

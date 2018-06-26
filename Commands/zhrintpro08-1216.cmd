@echo off
echo Copia archivos procesados SAP - INTELEXION.
echo.
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" \\grumarh00.gruma.com\interfaces\NuevaInt\Procesados
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" \\grumarh00.gruma.com\interfaces\NuevaInt\Procesados
rename "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" "SAP Mexico_DG.txt"
rename "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" "SAP Mexico_FAM.txt"
echo.
if not exist W:\interfaces\HR\LOGERRORES\ERRORESLogError* goto SALIDA
Move W:\interfaces\HR\LOGERRORES\LogErrores* \\grumarh00.gruma.com\interfaces\NuevaInt\ERRORES\
:SALIDA
echo Fin move archivos Procesados.



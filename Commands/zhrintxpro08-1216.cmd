@echo off
echo Copia archivos por procesar SAP - INTELEXION.
echo.
w:
cd W:\interfaces\HR
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt" "w:\interfaces\HR\SAP_Mexico_DG.txt"
copy "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt" "w:\interfaces\HR\SAP_Mexico_FAM.txt"
del "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_DG*.txt"
del "\\grumarh00.gruma.com\interfaces\NuevaInt\Por Procesar\SAP Mexico_FAM*.txt"
echo.
echo Fin copia archivos INTELEXION.
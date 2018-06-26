@echo off
echo Copia archivos contratos RH.
echo.
w:
cd w:\interfaces\fi\if044\newdata
if not exist txtInventarioSAP_Mov.txt goto ERROR
copy w:txtInventarioSAP_Mov*.txt \\delta18\ftproot$
move w:txtInventarioSAP_Mov.txt ..\archive
goto Fin
:Error
 echo No exite el archivo txtInventarioSAP_Mov.txt
:Fin
echo.
echo Fin comando.

@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.
rem Modificado el 12 de noviembre por Samuel Banda de acuerdo a service call 72761.

set Archivo=fact_agre.txt

Set Fuente=\\sapdatamx\sapdata\interfaces\mm
set Destino=\\delta19\Datamart\Fuentes\SIM

for %%i in ( %Archivo% ) do if not exist \\sapdatamx\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivo% ) do if exist     \\sapdatamx\sapdata\interfaces\mm\%%i copy \\sapdatamx\sapdata\interfaces\mm\%%i %Destino%
for %%i in ( %Archivo% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\mm\%%i \\sapdatamx\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo ----- Fin de script subproductos -----

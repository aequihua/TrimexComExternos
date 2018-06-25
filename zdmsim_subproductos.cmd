@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.


set Archivos=subproductos.txt subproductos3750.txt subproductos3625.txt subproductos3950.txt subproductos4400.txt subproductos3800.txt subproductos4560.txt subproductos4520.txt subproductos3850.txt subproductos3350.txt subproductos3400.txt subproductos3425.txt subproductos4000.txt subproductos4420.txt subproductos4460.txt subproductos4540.txt 

Set Fuente=\\sapdatamx\sapdata\interfaces\mm
set Destino=\\delta19\Datamart\Fuentes\SIM

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\mm\%%i copy \\sapdatamx\sapdata\interfaces\mm\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\mm\%%i \\sapdatamx\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo ----- Fin de script subproductos -----
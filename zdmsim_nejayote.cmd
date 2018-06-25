@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.


set Archivos=nejayote.txt nejayote3750.txt nejayote3625.txt nejayote3950.txt nejayote4400.txt nejayote3800.txt nejayote4560.txt nejayote4520.txt nejayote3850.txt nejayote3350.txt nejayote3400.txt nejayote3425.txt nejayote4000.txt nejayote4420.txt nejayote4460.txt nejayote4540.txt

Set Fuente=\\sapdatamx\sapdata\interfaces\mm
set Destino=\\delta19\Datamart\Fuentes\SIM

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist     \\sapdatamx\sapdata\interfaces\mm\%%i copy \\sapdatamx\sapdata\interfaces\mm\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\mm\%%i \\sapdatamx\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo ----- Fin de script nejayote -----
@echo off
echo Copia archivos de GIMSA SIM
echo.

rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.

set Archivos=energeticos.txt energeticos3750.txt energeticos3625.txt energeticos3950.txt energeticos4400.txt energeticos3800.txt energeticos4560.txt energeticos4520.txt energeticos3850.txt energeticos3350.txt energeticos3400.txt energeticos3425.txt energeticos4000.txt energeticos4420.txt energeticos4460.txt energeticos4540.txt

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

echo ----- Fin de script energeticos -----

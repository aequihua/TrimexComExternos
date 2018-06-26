@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.


set Archivos=ege.txt ege3750.txt ege3625.txt ege3950.txt ege4400.txt ege3800.txt ege4560.txt ege4520.txt ege3850.txt ege3350.txt ege3400.txt ege3425.txt ege4000.txt ege4420.txt ege4460.txt ege4540.txt

Set Fuente=\\sapdatamx\sapdata\interfaces\mm\
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

echo ----- Fin de script ege -----

@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por Cándido Cáceres de acuerdo a work order 20512.


set Archivos=3250_cunitarios.txt 3750_cunitarios.txt 3625_cunitarios.txt 3950_cunitarios.txt 4400_cunitarios.txt 3800_cunitarios.txt 4560_cunitarios.txt 4520_cunitarios.txt 3850_cunitarios.txt 3350_cunitarios.txt 3400_cunitarios.txt 3425_cunitarios.txt 4000_cunitarios.txt 4420_cunitarios.txt 4460_cunitarios.txt 4540_cunitarios.txt


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

echo ----- Fin de script cunitarios -----

@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por C�ndido C�ceres de acuerdo a work order 20512.


set Archivos=produccion.txt

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

echo ----- Fin de script produccion -----
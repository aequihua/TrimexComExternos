@echo off
echo Copia inicialmente archivo existenciastrigo.txt
echo.

rem Creado el 6 de Junio de 2011 por Erl, Work Order = 86,418.

set Archivos=existenciastrigo.txt 
            
Set Fuente=\\sapdatamx\sapdata\interfaces\MM
set Destino=\\gruma1011\datamart\Fuentes\SIMT

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\MM\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist     \\sapdatamx\sapdata\interfaces\MM\%%i copy \\sapdatamx\sapdata\interfaces\MM\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\MM\%%i \\sapdatamx\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo ----- Fin de script zdmsim_existencias.cmd -----

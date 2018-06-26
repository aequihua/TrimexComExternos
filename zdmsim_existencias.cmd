@echo off
echo Copia inicialmente archivo existenciastrigo.txt
echo.

rem Creado el 6 de Junio de 2011 por Erl, Work Order = 86,418.

set Archivos=existenciastrigo.txt 
            
Set Fuente=\\TXP\sapdata\interfaces\MM
set Destino=\\gtmxbi00.molmex.local\dm_SIM\Fuentes

for %%i in ( %Archivos% ) do if not exist \\TXP\sapdata\interfaces\MM\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist     \\TXP\sapdata\interfaces\MM\%%i copy \\TXP\sapdata\interfaces\MM\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\TXP\sapdata\interfaces\MM\%%i \\TXP\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo ----- Fin de script zdmsim_existencias.cmd -----

@echo off
echo * Copia archivoS TXT a \\molmex1021.molmex.local\dm_finanzas\ControlPrecios\Fuentes *
echo.

set Archivos=sicfedores.txt

set Destino=\\molmex1021.molmex.local\dm_finanzas\ControlPrecios\Fuentes

for %%i in ( %Archivos% ) do if not exist \\CITXP\sapdata\interfaces\fi\Molinera\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\CITXP\sapdata\interfaces\fi\Molinera\%%i copy \\CITXP\sapdata\interfaces\fi\Molinera\%%i %Destino%

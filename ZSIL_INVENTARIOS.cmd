@echo off
echo * Copia archivoS a \\gtmxbi00.molmex.local\dm_SIL\Fuentes *
echo.

set Archivos=inventarios.txt

set Destino=\\gtmxbi00.molmex.local\dm_SIL\Fuentes

for %%i in ( %Archivos% ) do if not exist \\txp\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\txp\sapdata\interfaces\mm\%%i copy \\txp\sapdata\interfaces\mm\%%i %Destino%



@echo off
echo * Copia archivoS a \\gruma1011\datamart\fuentes\sil *
echo.

set Archivos=inventarios.txt

set Destino=\\gruma1011.grumamex.com\Datamart\fuentes\sil

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\mm\%%i copy \\sapdatamx\sapdata\interfaces\mm\%%i %Destino%



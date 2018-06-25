@echo off
echo * Copia archivoS TXT a \\delta19\dm_Finanzas\molinera\fuentes *
echo.

set Archivos=sicfedores.txt

set Destino=\\delta19\dm_Finanzas\molinera\fuentes

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i copy \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i %Destino%

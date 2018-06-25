@echo off
echo * Copia archivoS TXT de Gimsa a \\delta19\dm_Finanzas\gimsa\fuentes *
echo.

set Archivos=sicfedores.txt

set Destino=\\delta19\dm_Finanzas\gimsa\fuentes

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\fi\gimsa\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\fi\gimsa\%%i copy \\sapdatamx\sapdata\interfaces\fi\gimsa\%%i %Destino%

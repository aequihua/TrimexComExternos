@echo off
echo * Copia archivoS TXT de Gimsa a \\delta19\dm_Finanzas\gimsa\fuentes *
echo.

set Archivos=sicfceco1.txt sicfceco2.txt sicfceco3.txt sicfcelemgrc11.txt sicfcelemgrc12.txt sicfcelemgrc13.txt sicfpca1.txt sicfpca2.txt sicfpca3.txt

set Destino=\\delta19\dm_Finanzas\gimsa\fuentes
w:
cd \interfaces\fi\gimsa
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
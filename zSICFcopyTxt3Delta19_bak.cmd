@echo off
echo * Copia archivoS TXT de Gimsa a \\delta19\dm_Finanzas\gimsa\fuentes *
echo.

set Archivos=sicfcelemgtosgm1.txt sicfcelemgtosgm2.txt sicfcelemgtosgm3.txt sicfcecogtosg1.txt sicfcecogtosg2.txt sicfcecogtosg3.txt sicfpcagtos1.txt sicfpcagtos2.txt sicfpcagtos3.txt

set Destino=\\delta19\dm_Finanzas\gimsa\fuentes
w:
cd \interfaces\fi\gimsa
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
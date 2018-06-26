@echo off
echo * Copia archivoS TXT a \\delta19\dm_Finanzas\molinera\fuentes *
echo.

set Archivos=sicfcecomgtosm1.txt sicfcecomgtosm2.txt sicfcecomgtosm3.txt sicfpcamgtos1.txt sicfpcamgtos2.txt sicfpcamgtos3.txt sicfcelemgtosgm1.txt sicfcelemgtosgm2.txt sicfcelemgtosgm3.txt

set Destino=\\delta19\dm_Finanzas\molinera\fuentes
w:
cd \interfaces\fi\Molinera
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
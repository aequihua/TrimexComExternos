@echo off
echo * Copia archivoS TXT a \\delta19\dm_Finanzas\molinera\fuentes *
echo.

set Archivos=sicfcecomgtosm1.txt sicfcecomgtosm2.txt sicfcecomgtosm3.txt sicfpcamgtos1.txt sicfpcamgtos2.txt sicfpcamgtos3.txt sicfcelemgtosgm1.txt sicfcelemgtosgm2.txt sicfcelemgtosgm3.txt sicfcelemgtosgmog1.txt sicfcelemgtosgmog2.txt sicfcelemgtosgmog3.txt

set Destino=\\delta19\dm_Finanzas\molinera\fuentes

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i copy \\sapdatamx\sapdata\interfaces\fi\Molinera\%%i %Destino%

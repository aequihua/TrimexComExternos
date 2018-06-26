@echo off
echo * Copia archivoS TXT a \\molmex1021.molmex.local\dm_finanzas\CorporativoGastos\Fuentes *
echo.

set Archivos=sicfcecomgtosm1.txt sicfcecomgtosm2.txt sicfcecomgtosm3.txt sicfpcamgtos1.txt sicfpcamgtos2.txt sicfpcamgtos3.txt sicfcelemgtosgm1.txt sicfcelemgtosgm2.txt sicfcelemgtosgm3.txt sicfcelemgtosgmog1.txt sicfcelemgtosgmog2.txt sicfcelemgtosgmog3.txt sicfcelemgtosgmn1.txt sicfcelemgtosgmn2.txt sicfcelemgtosgmn3.txt sicfcecomgtosmn1.txt sicfcecomgtosmn2.txt sicfcecomgtosmn3.txt sicfcecomktmn1.txt sicfcecomktmn2.txt sicfcecomktmn3.txt
set Destino=\\molmex1021.molmex.local\dm_finanzas\CorporativoGastos\Fuentes

for %%i in ( %Archivos% ) do if not exist \\CITXP\sapdata\interfaces\fi\Molinera\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\CITXP\sapdata\interfaces\fi\Molinera\%%i copy \\CITXP\sapdata\interfaces\fi\Molinera\%%i %Destino%

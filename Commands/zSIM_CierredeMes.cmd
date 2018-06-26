@echo off
echo * Copia archivoS a \\DELTA19\Datamart\Fuentes\SIM *
echo.

set Archivos=produccion_cierre.txt molienda_cierre.txt paros_cierre.txt reprocesos_cierre.txt nejayote_cierre3250.txt subproductos_cierre_3250 ege_cierre_3250.txt energeticos_cierre_3250.txt nejayote_cierre3750.txt subproductos_cierre_3750.txt ege_cierre_3750.txt energeticos_cierre_3750.txt

set Destino=\\delta19\Datamart\Fuentes\SIM
w:
cd \interfaces\mm\
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%



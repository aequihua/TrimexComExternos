@echo off
echo Copia HHC PRECIOS.
echo.
w:
cd w:\interfaces\sd\sinergianew
set Fecha=%DATE%
set hora=%TIME%
echo %Fecha% %Hora%
if "%1" == "4560" goto P4560
if "%1" == "3750" goto P3750
copy w:hhc_precios.txt \\DELTA08.gruma.com\EntradaBDSinergian
cd w:\interfaces\sd\prodisa
copy w:hhc_precios.txt \\DELTA08.gruma.com\EntradaBDProdisa
goto FIN
:P4560
copy w:hhc_precios_4560.txt \\DELTA08.gruma.com\EntradaBDSinergian
Rem w.o 35105
goto FIN
:P3750
copy w:hhc_precios_3750.txt \\DELTA08.gruma.com\EntradaBDSinergian
:FIN
echo Fin copia archivos HHC PRECIOS.
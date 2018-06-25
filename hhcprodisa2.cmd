@echo off
echo Copia HHC PRODISA 05:00 AM
echo.
w:
cd w:\interfaces\sd\prodisa
copy w:hhc_invini.txt \\DELTA08.gruma.com\EntradaBDProdisa
copy w:hhc_vtasacum.txt \\DELTA08.gruma.com\EntradaBDProdisa
echo Fin copia archivos HHC PRODISA 05:00 AM.
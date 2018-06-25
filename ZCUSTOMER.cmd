@echo off
echo Copia archivo aging.txt al servidor Edinburg01/Irving02
echo.
w:
cd w:\interfaces\sd\if003\newdata
date /T > ..\archive\CUSTOMER.log
time /T >> ..\archive\CUSTOMER.log
echo Inicia copia aging.txt al servidor Edinburg01\aztecasd$\sd\txts
copy aging1.txt \\edinburg01.aztecamilling.com\aztecasd$\sd\txts\aging.txt
copy aging1.txt \\irving02.aztecamilling.com\aztecasd$\sd\txts\aging.txt
date /T >> ..\archive\CUSTOMER.log
time /T >> ..\archive\CUSTOMER.log
move aging1.txt ..\archive
echo Fin copia archivo CUSTOMER PROFILE

@echo off
echo Copia archivo grote.txt al servidor Edinburg01
echo.
w:
date /T > .\hr\zhrgrote.log
time /T >> .\hr\zhrgrote.log
echo Inicia copia grote.txt al servidor Edinburg01\aztecasd$\hr\txts
copy grote.txt \\edinburg01.aztecamilling.com\aztecasd$\hr\txts
date /T >> .\hr\zhrgrote.log
time /T >> .\hr\zhrgrote.log
move grote.txt .\hr
echo Fin copia archivo grote.txt

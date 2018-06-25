:begin
@echo off
REM copia archivos de \\sapdataus\sapdata\intefces\fi a \\colinas02.missionfoods.com\sapfiles
echo.
W:
cd \interfaces\fi
e:\osctools\winzip\wzzip OCTAVIO_17-18.ZIP @orobles_zip.lst 2>&1 >w:\interfaces\fi\archive\orobles.log

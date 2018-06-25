@echo off
echo Copia archivo SICF_TEST al servidor COLINAS02
echo.
w:
cd w:\interfaces\fi\if044\newdata
copy sicf*.t* \\colinas02.missionfoods.com\sapfiles\SICF


:begin
@echo off
w:
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
if "%1" == "UNBLOCK" goto UNBLOCK
if "%1" == "unblock" goto UNBLOCK
if "%1" == "DOWNLOAD" goto DOWNLOAD
if "%1" == "download" goto DOWNLOAD
if "%1" == "MISUSA" goto MISUSA
if "%1" == "misusa" goto MISUSA
if "%1" == "MISUK" goto MISUK
if "%1" == "misuk" goto MISUK
if "%1" == "AZTECA" goto AZTECA
if "%1" == "azteca" goto AZTECA
:ERROR1
echo "--> Use correct parameter: 'UNBLOCK', 'DOWNLOAD', 'MISUSA', 'MISUK' o 'AZTECA'"
goto FIN
:UNBLOCK
echo UNBLOCK AP_DOCS
REM copia archivo de \\Coventry09\SAPfiles\scanproapuk.txt a \\sapdataus\sapdata\interfaces
copy \\Coventry09.missionfoods.com\SAPfiles\scanproapuk.txt W:\interfaces\scanproapuk.txt
goto FIN
:DOWNLOAD
:MISUK
echo DOWNLOAD AP_DOCS TO MIS UK
REM copia archivos de \\sapdataus\sapdata\interfaces\scanproapdocsuk.txt \\Coventry09\SAPfiles
copy W:\interfaces\scanproapdocsuk.txt \\Coventry09.missionfoods.com\SAPfiles\scanproapdocsuk.txt
goto FIN
:MISUSA
echo DOWNLOAD AP_DOCS TO MIS USA
REM copia archivos de \\sapdataus\sapdata\interfaces\scanproapdocsuk.txt \\Coventry09\SAPfiles
copy W:\interfaces\scanproapdocsuk.txt \\Colinas27.missionfoods.com\SAPfiles\mission\scanproapdocsuk.txt
goto FIN
:AZTECA
echo DOWNLOAD AP_DOCS To AZTECA
REM copia archivos de \\sapdataus\sapdata\interfaces\scanproapdocsuk.txt \\Coventry09\SAPfiles
copy W:\interfaces\scanproapdocsuk.txt \\Colinas27.missionfoods.com\SAPfiles\azteca\scanproapdocsuk.txt
:FIN
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%

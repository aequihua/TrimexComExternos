@echo off
echo Copia SIPROS JOB ZHRSIPROS_NEW
echo .
cd w:\
cd w:\interfaces\HR
set Fecha=%DATE%
set hora=%TIME%
echo %Fecha% %Hora%
if "%1" == "4520" goto ACAPONETA
if "%1" == "3950" goto CHIAPAS
if "%1" == "4400" goto CHIHUAHUA
if "%1" == "3550" goto CHINAMECA
if "%1" == "3600" goto COMNAUCALPAN
if "%1" == "3400" goto CULIACAN
if "%1" == "3750" goto JALISCO
if "%1" == "3425" goto LA PAZ
if "%1" == "3800" goto MERIDA
if "%1" == "3850" goto MEXICALI
if "%1" == "4420" goto NUEVO LEON
if "%1" == "3650" goto OBREGON
if "%1" == "3250" goto RIO BRAVO
if "%1" == "4560" goto BAJIO
if "%1" == "4460" goto TAMPICO
if "%1" == "3625" goto TEOTIHUACAN
if "%1" == "4000" goto VERACRUZPTO
if "%1" == "8150" goto AGROINSA
if "%1" == "4900" goto AGROINSA
if "%1" == "4991" goto AGROINSA
if "%1" == "4992" goto AGROINSA
if "%1" == "4993" goto AGROINSA
if "%1" == "8350" goto CD JUAREZ
if "%1" == "8050" goto DURANGO
if "%1" == "8000" goto NAUCALPAN
if "%1" == "8200" goto CELAYA
if "%1" == "8400" goto PUEBLA
if "%1" == "8100" goto OBREGONMM
if "%1" == "8250" goto HERMOSILLO
if "%1" == "8300" goto CD CONSTITUCION
if "%1" == "8900" goto HNAMTY
if "%1" == "5075" goto PRODISAGLOBAL
if "%1" == "5600" goto PRODISAGLOBAL
if "%1" == "5050" goto PRODISAGLOBAL
if "%1" == "5075" goto PRODISAGLOBAL
if "%1" == "6000" goto CORPMEXICO
if "%1" == "6000" goto CORPMTY
if "%1" == "4785" goto STAFMEXICO
if "%1" == "8600" goto STAFMEXICO
GOTO FIN
:ACAPONETA
if not exist W:\interfaces\HR\ACAPONETA.REP (
echo Archivo "ACAPONETA.REP" no existe.
goto FIN
)
copy w:ACAPONETA.REP \\DELTA09.gruma.com\ACAPONETA
if errorlevel 1 echo Cannot copy "ACAPONETA.REP" to DELTA09
goto FIN
:CHIAPAS
copy w:CHIAPAS.REP \\DELTA09.gruma.com\CHIAPAS
:CHIHUAHUA
copy w:CHIHUAHUA.REP \\DELTA09.gruma.com\CHIHUAHUA
:CHINAMECA
copy w:CHINAMECA.REP \\DELTA09.gruma.com\CHINAMECA
:COMNAUCALPAN
copy w:COMNAUCALPAN.REP \\DELTA09.gruma.com\COMNAUCALPAN
:CULIACAN
copy w:CULIACAN.REP \\DELTA09.gruma.com\CULIACAN
:JALISCO
copy w:JALISCO.REP \\DELTA09.gruma.com\JALISCO
:LA PAZ
copy w:LA PAZ.REP \\DELTA09.gruma.com\LA PAZ
:MERIDA
copy w:MERIDA.REP \\DELTA09.gruma.com\MERIDA
:MEXICALI
copy w:MEXICALI.REP \\DELTA09.gruma.com\MEXICALI
:NUEVO LEON
copy w:NUEVO LEON.REP \\DELTA09.gruma.com\NUEVO LEON
:OBREGON
copy w:OBREGON.REP \\DELTA09.gruma.com\OBREGON
:RIO BRAVO
copy w:RIO BRAVO.REP \\DELTA09.gruma.com\RIO BRAVO
:BAJIO
if not exist W:\interfaces\HR\BAJIO*.REP (
echo Archivo "BAJIO*.REP" no existe.
goto FIN
)
copy w:BAJIO*.REP \\DELTA09.gruma.com\BAJIO
if errorlevel 1 echo Cannot copy "BAJIO.REP" to DELTA09
goto FIN
:TAMPICO
copy w:TAMPICO.REP \\DELTA09.gruma.com\TAMPICO
:TEOTIHUACAN
copy w:TEOTIHUACAN.REP \\DELTA09.gruma.com\TEOTIHUACAN
:VERACRUZPTO
copy w:VERACRUZPTO.REP \\DELTA09.gruma.com\VERACRUZPTO
:AGROINSA
copy w:AGROINSA.REP \\DELTA09.gruma.com\AGROINSA
:CD JUAREZ
copy w:CD JUAREZ.REP \\DELTA09.gruma.com\CD JUAREZ
:DURANGO
copy w:DURANGO.REP \\DELTA09.gruma.com\DURANGO
:NAUCALPAN
copy w:NAUCALPAN.REP \\DELTA09.gruma.com\NAUCALPAN
:CELAYA
copy w:CELAYA.REP \\DELTA09.gruma.com\CELAYA
:PUEBLA
copy w:PUEBLA.REP \\DELTA09.gruma.com\PUEBLA
:OBREGONMM
copy w:OBREGONMM.REP \\DELTA09.gruma.com\OBREGONMM
:HERMOSILLO
copy w:HERMOSILLO.REP \\DELTA09.gruma.com\HERMOSILLO
:CD CONSTITUCION
copy w:CD CONSTITUCION.REP \\DELTA09.gruma.com\CD CONSTITUCION
:HNAMTY
copy w:HNAMTY.REP \\DELTA09.gruma.com\HNAMTY
:PRODISAGLOBAL
copy w:PRODISA.REP \\DELTA09.gruma.com\PRODISA
:CORPMEXICO
copy w:CORP.MEXICO.REP \\DELTA09.gruma.com\CORPMEXICO
:CORPMTY
copy w:CORP.MTY.REP \\DELTA09.gruma.com\CORPMTY
:STAFMEXICO
copy w:STAFMEXICO.REP \\DELTA09.gruma.com\STAFMEXICO
:FIN
echo Fin del Proceso
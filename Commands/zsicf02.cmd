@echo off
echo Copia archivos SICF al servidor COLINAS02
echo.
w:
cd w:\interfaces\fi\if044\newdata
rem -- Verificando existencia de directorios destino --
  if not exist ..\archive\mon mkdir ..\archive\mon
  if not exist ..\archive\tue mkdir ..\archive\tue
  if not exist ..\archive\wed mkdir ..\archive\wed
  if not exist ..\archive\thu mkdir ..\archive\thu
  if not exist ..\archive\fri mkdir ..\archive\fri
  if not exist ..\archive\sat mkdir ..\archive\sat
  if not exist ..\archive\sun mkdir ..\archive\sun

if "%1" == "EUROPE" goto EUROPE
if "%1" == "HOLANDA" goto HOLANDA
if "%1" == "MISSION" goto MISSION
if "%1" == "GASTOS" goto GASTOS
if "%1" == "ESTRUCTGTOS" goto ESTRUCTGTOS
if "%1" == "EUROPE_BI"  goto EUROPE_BI
if "%1" == "ENGLAND_BI"  goto ENGLAND_BI

:ERROR1
echo Use: A valid parameter <EUROPE> or <MISSION> or <GASTOS> or <HOLANDA> or 
echo      <ENGLAND_BI> or <EUROPE_BI> or <CATALOG_BI>
goto FIN
:HOLANDA
  echo Copia archivos SICF HOLANDA.
  copy w:sicf*nl*.txt \\colinas02.missionfoods.com\sapfiles\SICF
REM  copy w:sicf*nl*.txt \\colinas92.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:sicf*nl*.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:EUROPE
  echo Copia archivos SICF EUROPE.
  copy w:sicf*gb*.txt \\colinas02.missionfoods.com\sapfiles\SICF
REM  copy w:sicf*gb*.txt \\colinas92.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:sicf*gb*.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:MISSION
  echo Copia archivos SICF MISSION.
  copy w:sicf*.txt \\colinas02.missionfoods.com\sapfiles\SICF
REM  copy w:sicf*.txt \\colinas92.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:sicf*.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:GASTOS
  echo Copia archivos SICF GASTOS.
  copy w:sicfmovexp.txt \\colinas02.missionfoods.com\sapfiles\SICF
REM  copy w:sicfmovexp.txt \\colinas92.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:sicfmovexp.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:ESTRUCTGTOS
  echo Copia archivos SICF ESTRUCTURAS GASTOS.
  copy w:sicfexp*.txt \\colinas02.missionfoods.com\sapfiles\SICF
REM  copy w:sicfexp*.txt \\colinas92.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:sicfexp.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:EUROPE_BI
  echo Copia archivos de Europa, Inglaterra y Catálogo.
  copy w:Eur_76*.txt \\colinas02.missionfoods.com\sapfiles\SICF
  copy w:Eurcus.txt \\colinas02.missionfoods.com\sapfiles\SICF
  copy w:Eurmat.txt \\colinas02.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:eur_76*.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  echo %date% | gawk '{print "move w:eurcus.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  echo %date% | gawk '{print "move w:eurmat.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
goto FIN
:ENGLAND_BI
  echo Copia archivos de Inglaterra y Catálogo.
  copy w:Eur_7500.txt \\colinas02.missionfoods.com\sapfiles\SICF
  copy w:Eur_7700.txt \\colinas02.missionfoods.com\sapfiles\SICF
  echo %date% | gawk '{print "move w:eur_7500.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
  echo %date% | gawk '{print "move w:eur_7700.txt ..\\\archive\\\" $1 "\\\"}'   > }{.cmd
  call }{.cmd
  del }{.cmd
:FIN
echo.
echo Fin copia archivos SICF
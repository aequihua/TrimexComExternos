@echo off

echo Preparing for copy to SAP...
echo Please wait.

rem
rem create log filename from current date and time
rem
:GETLOGNAME
  set LOGNAME=W:\interfaces\EDI\archive\snd_

  for /f "tokens=1,2,*" %%i in ('date /t') do set DATE=%%j
  :LOOP1
    for /f "tokens=1,* delims=,-/.:" %%i in ("%DATE%") do (
      set LOGNAME=%LOGNAME%%%i
      if "%%j" == "" goto ENDLOOP1
      set DATE=%%j
      goto LOOP1
    )
  :ENDLOOP1

  for /f "tokens=1,2,* delims=:" %%i in ('time /t') do (
    if %%i lss 10 (
      set LOGNAME=%LOGNAME%_0%%i%%j
    ) else (
      set LOGNAME=%LOGNAME%_0%%i%%j
    )
  )

  rem remove any spaces from the filename
  :LOOP2
    for /f "tokens=1,*" %%i in ("%LOGNAME%") do (
      set LOGNAME=%%i%%j
      if "%%j" == "" goto ENDLOOP2
      goto LOOP2
    )
  :ENDLOOP2
if exist %LOGNAME% goto GETLOGNAME

rem
rem copy from \\colinas21.missionfoods.com\DATA\G4\Export\g4oidiscounts.txt to \\sapdataus\sapdata\interfaces\EDI\g4oidiscounts.txt
rem
copy \\colinas21.missionfoods.com\Data\G4\Export\g4oidiscounts.txt  W:\interfaces\EDI\g4oidiscounts.txt /Z /Y /A >%LOGNAME%:
if errorlevel 1 (
  echo Cannot copy file to SAP
  pause
  goto :EOF
)
rem
rem copy from \\colinas28.missionfoods.com\G4Analytics\Phase I\g4oidiscounts.txt to \\sapdataus\sapdata\interfaces\EDI\g4oidiscounts.txt
rem
copy "\\Colinas28.missionfoods.com\G4Analytics\Phase I\SAP Extracts\OIDiscounts\ExportToSAP\g4oidiscounts.txt"  W:\interfaces\EDI\g4oidiscounts.txt /Z /Y /A >%LOGNAME%:
if errorlevel 1 (
  echo Cannot copy file to SAP
  pause
  goto :EOF
)


:EOF
rem FIN

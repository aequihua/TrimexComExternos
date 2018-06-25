@echo off

echo Preparing for copy to Colinas21...
echo Please wait.

rem
rem create log filename from current date and time
rem
:GETLOGNAME
  set LOGNAME=W:\interfaces\EDI\archive\imp_

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
rem copy from \\colians21.missionfoods.com\DATA\dms\Export\SAPupload.txt to \\sapdataus\sapdata\interfaces\EDI\SAPupload.txt
rem
copy W:\interfaces\EDI\promo.txt \\colinas21.missionfoods.com\Data\dms\Import\promo.txt /Z /Y /A >%LOGNAME%:
if errorlevel 1 (
  echo Cannot copy file to colinas21
  pause
  goto :EOF
)

copy W:\interfaces\EDI\promo.txt "\\colinas28.missionfoods.com\G4Analytics\Phase I\SAP Extracts\PromotionHistory\ImportFromSAP\promo.txt" /Z /Y /A >%LOGNAME%:
if errorlevel 1 (
  echo Cannot copy file to colinas21
  pause
  goto :EOF
)


rem
rem backup file
rem
if not exist W:\interfaces\EDI\promo.txt (
  echo Cannot backup: File "promo.txt" is missing. >>%LOGNAME%:
  pause
  goto EOF:
)
move W:\interfaces\EDI\promo.txt W:\interfaces\EDI\archive >>%LOGNAME%:


:EOF
rem FIN

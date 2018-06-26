:begin
@echo off
REM    Envio archivos de \\sapdataus\sapdata a \\Coventry00\groups$\accounts\bacs
w:
echo.
if "%1"=="" goto error1
:getfile
if not exist %1 (
  echo No existe el archivo %1
  shift
  if "%1"=="" goto end
  goto getfile
)
copy %1 \\coventry00.missionfoods.com\groups$\accounts\bacs
shift
if "%1"=="" goto end
goto getfile
:error1
echo use:  %0 filename1 filename2 ....
:end
echo.

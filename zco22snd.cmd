:begin
@echo off
REM    Envio archivos de w:\interfaces a \\Colinas22\sapfiles
w:
cd w:\interfaces
echo.
if "%1"=="" goto error1
:getfile
if not exist %1 (
  echo No existe el archivo %1
  shift
  if "%1"=="" goto end
  goto getfile
)
copy %1 \\Colinas22.missionfoods.com\sapfiles
shift
if "%1"=="" goto end
goto getfile
:error1
echo use:  %0 filename1 filename2 ....
:end
echo.

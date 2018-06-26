:begin
@echo off
REM    Envio archivos de edi a \\Colinas03\penske
echo.
if "%1"=="" goto error1
zedi%1
goto end
:error1
echo use:  %0 option
:end
echo.

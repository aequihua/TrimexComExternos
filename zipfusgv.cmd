:begin
@echo off
REM    Envio archivos de w:\interfaces\fi\zfusgv*.txt a \\Colinas02\sapfiles
w:
cd w:\interfaces\fi
echo.
WZZIP zfusgv.zip zfusgv*.txt 2>&1 >.\archive\zipfusgv.log
if not errorlevel 1 (
  copy zfusgv.zip \\colinas02.missionfoods.com\sapfiles
  move zfusgv.zip .\archive
  del zfusgv*.txt
  goto end
)
echo zipfusgv.cmd: Error en proceso de ZIP.
:end
echo.

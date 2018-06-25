:begin
@echo off
REM    Envio archivos de w:\interfaces\fi\ZFUSGV7*.txt a \\Colinas02\sapfiles
w:
cd w:\interfaces\fi
echo.
WZZIP zfusgv7.zip ZFUSGV7*.txt 2>&1 >.\archive\zipfusgv7.log
if not errorlevel 1 (
  copy zfusgv7.zip \\colinas02.missionfoods.com\sapfiles
  move zfusgv7.zip .\archive
  del ZFUSGV7*.txt
  goto end
)
echo zipfusgv2.cmd: Error en proceso de ZIP.
:end
echo.

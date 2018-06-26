@echo off
echo Mueve archivos de SAP gtmxprd00 al H2H MOLMEXH2H
echo.
if exist \\gtmxprd00\ArchivosBanorte\enviarH2H\RP*.TXT xcopy \\gtmxprd00\ArchivosBanorte\enviarH2H\RP*.TXT \\molmexh2h\dir\a_enviar /Z 
if exist \\gtmxprd00\ArchivosBanorte\enviarH2H\RP*.TXT move \\gtmxprd00\ArchivosBanorte\enviarH2H\RP*.TXT \\gtmxprd00\ArchivosBanorte\respaldoH2H



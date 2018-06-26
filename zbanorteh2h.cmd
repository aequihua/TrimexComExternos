@echo off
echo Mueve archivos de SAP GTMXPRD00 al H2H MOLMEXH2H
echo.
if exist \\GTMXPRD00\ArchivosBanorte\enviarH2H\PP*.TXT xcopy \\GTMXPRD00\ArchivosBanorte\enviarH2H\PP*.TXT \\molmexh2h\dirH2H\a_enviar /Z 
if exist \\GTMXPRD00\ArchivosBanorte\enviarH2H\PP*.TXT move \\GTMXPRD00\ArchivosBanorte\enviarH2H\PP*.TXT \\GTMXPRD00\ArchivosBanorte\respaldoH2H



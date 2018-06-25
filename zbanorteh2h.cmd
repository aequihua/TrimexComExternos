@echo off
echo Mueve archivos de SAP GTMXQAS00 al H2H TEST MOLMEXH2H
echo.
if exist \\GTMXQAS00\ArchivosBanorte\enviarH2H\PP*.TXT xcopy \\GTMXQAS00\ArchivosBanorte\enviarH2H\PP*.TXT \\molmexh2h\TESTdir\a_enviar /Z 
if exist \\GTMXQAS00\ArchivosBanorte\enviarH2H\PP*.TXT move \\GTMXQAS00\ArchivosBanorte\enviarH2H\PP*.TXT \\GTMXQAS00\ArchivosBanorte\respaldoH2H



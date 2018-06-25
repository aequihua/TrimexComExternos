@echo off
echo Mueve archivos de SAP CITXP al H2H TEST MOLMEXH2H
echo.
if exist \\CITXP\ArchivosBanorte\enviarH2H\PP*.TXT xcopy \\CITXP\ArchivosBanorte\enviarH2H\PP*.TXT \\molmexh2h\dirH2H\a_enviar  /Z 
if exist \\CITXP\ArchivosBanorte\enviarH2H\PP*.TXT move \\CITXP\ArchivosBanorte\enviarH2H\PP*.TXT \\CITXP\ArchivosBanorte\respaldoH2H



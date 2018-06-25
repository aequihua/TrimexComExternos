@echo off
echo Mueve archivos de SAP MOLMEXPRD01 al H2H MOLMEXH2H
echo.
if exist \\GTMXQAS00\ArchivosBanorte\enviarH2H\RP*.TXT xcopy \\GTMXQAS00\ArchivosBanorte\enviarH2H\RP*.TXT \\molmexh2h\TESTdir\a_enviar /Z 
if exist \\GTMXQAS00\ArchivosBanorte\enviarH2H\RP*.TXT move \\GTMXQAS00\ArchivosBanorte\enviarH2H\RP*.TXT \\GTMXQAS00\ArchivosBanorte\respaldoH2H



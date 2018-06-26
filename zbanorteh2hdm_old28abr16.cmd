@echo off
echo Mueve archivos de SAP MOLMEXPRD01 al H2H MOLMEXH2H
echo.
if exist \\MOLMEXPRD01\ArchivosBanorte\enviarH2H\RP*.TXT xcopy \\MOLMEXPRD01\ArchivosBanorte\enviarH2H\RP*.TXT \\molmexh2h\dir\a_enviar /Z 
if exist \\MOLMEXPRD01\ArchivosBanorte\enviarH2H\RP*.TXT move \\MOLMEXPRD01\ArchivosBanorte\enviarH2H\RP*.TXT \\MOLMEXPRD01\ArchivosBanorte\respaldoH2H



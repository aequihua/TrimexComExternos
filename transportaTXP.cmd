@echo off
path=%path%;\\TXP\sapmnt\TXP\sys\exe\nuc\NTAMD64
echo "Inicia Transporte a Produccion MOLMEX"
echo %date%,%time%,%MSSQL_DBNAME%,TXDK9%1 > \\txp\trans-web\translog.txt
date /t
time /t
tp addtobuffer TXDK9%1 TXP pf=\\saptranshost\sapmnt\trans\bin\TP_DOMAIN_TXD.PFL
tp import TXDK9%1 TXP client310 U128 pf=\\saptranshost\sapmnt\trans\bin\TP_DOMAIN_TXD.PFL
del \\TXP\trans-web\translog.txt
date /t
time /t

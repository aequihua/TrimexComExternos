@echo off
echo Copia archivo altas.txt y bajas.txt al servidor Molmex1201
REM copy \\sapdatatx\sapdata\interfaces\hr\altas.txt \\rioplata11.gruma.com\SAPInterface\
REM copy \\sapdatatx\sapdata\interfaces\hr\bajas.txt \\rioplata11.gruma.com\SAPInterface\
REM rem Change 30694, 24/10/2013
copy /Z /Y \\sapdatatx\sapdata\interfaces\hr\altas.txt \\Molmex1201\SAPInterface\
copy /Z /Y \\sapdatatx\sapdata\interfaces\hr\bajas.txt \\Molmex1201\SAPInterface\

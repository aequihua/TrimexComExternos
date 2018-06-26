@echo off
echo Copia archivo altas.txt y bajas.txt al servidor RIOPLATA11
REM copy \\sapdatamx\sapdata\interfaces\hr\altas.txt \\rioplata11.gruma.com\SAPInterface\
REM copy \\sapdatamx\sapdata\interfaces\hr\bajas.txt \\rioplata11.gruma.com\SAPInterface\
REM rem Change 30694, 24/10/2013
copy /Z /Y \\sapdatamx\sapdata\interfaces\hr\altas.txt \\GRUMA1201\SAPInterface\
copy /Z /Y \\sapdatamx\sapdata\interfaces\hr\bajas.txt \\GRUMA1201\SAPInterface\

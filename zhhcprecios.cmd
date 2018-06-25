@echo off
echo Copia HHC PRECIOS.
echo.
set Fecha=%DATE%
set hora=%TIME%
echo %Fecha% %Hora%
if "%1" == "4560" goto P4560
if "%1" == "3750" goto P3750
if "%1" == "3775" goto P3775
if "%1" == "3800" goto P3800
if "%1" == "4460" goto P4460
if "%1" == "3950" goto P3950
if "%1" == "4540" goto P4540
if "%1" == "3250" goto P3250
if "%1" == "3850" goto P3850
if "%1" == "4400" goto P4400
if "%1" == "4420" goto P4420
if "%1" == "4520" goto P4520
if "%1" == "3400" goto P3400
if "%1" == "3625" goto P3625
if "%1" == "3350" goto P3350
if "%1" == "4000" goto P4000
if "%1" == "ZPRN" goto PZPRN
if "%1" == "3425" goto P3425
if "%1" == "ZPRN_DES" goto ZPRN_DES
if "%1" == "4420_AGR" goto 4420_AGR
if "%1" == "3250_AGR" goto 3250_AGR
if "%1" == "3350_AGR" goto 3350_AGR
if "%1" == "3850_AGR" goto 3850_AGR
if "%1" == "3950_AGR" goto 3950_AGR
if "%1" == "4000_AGR" goto 4000_AGR
if "%1" == "3800_AGR" goto 3800_AGR
if "%1" == "3400_AGR" goto 3400_AGR
if "%1" == "3625_AGR" goto 3625_AGR
if "%1" == "3750_AGR" goto 3750_AGR
if "%1" == "3775_AGR" goto 3775_AGR
if "%1" == "3425_AGR" goto 3425_AGR
if "%1" == "4520_AGR" goto 4520_AGR
if "%1" == "4400_AGR" goto 4400_AGR
if "%1" == "4560_AGR" goto 4560_AGR
if "%1" == "4540_AGR" goto 4540_AGR
if "%1" == "4460_AGR" goto 4460_AGR
if "%1" == "3250_ZH24" goto 3250_ZH24
if "%1" == "3350_ZH24" goto 3350_ZH24
if "%1" == "3400_ZH24" goto 3400_ZH24
if "%1" == "3425_ZH24" goto 3425_ZH24
if "%1" == "3625_ZH24" goto 3625_ZH24
if "%1" == "3750_ZH24" goto 3750_ZH24
if "%1" == "3775_ZH24" goto 3775_ZH24
if "%1" == "3800_ZH24" goto 3800_ZH24
if "%1" == "3850_ZH24" goto 3850_ZH24
if "%1" == "3950_ZH24" goto 3950_ZH24
if "%1" == "4000_ZH24" goto 4000_ZH24
if "%1" == "4400_ZH24" goto 4400_ZH24
if "%1" == "4420_ZH24" goto 4420_ZH24
if "%1" == "4460_ZH24" goto 4460_ZH24
if "%1" == "4520_ZH24" goto 4520_ZH24
if "%1" == "4540_ZH24" goto 4540_ZH24
if "%1" == "4560_ZH24" goto 4560_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhc_precios.txt \\172.31.1.18\EntradaBDSinergian
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_precios.txt     \\172.31.1.18\EntradaBDProdisa
goto FIN
:P4560
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4560.txt \\172.31.1.18\EntradaBDSinergian
goto FIN
:P3750
Rem w.o 35105
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3750.txt \\172.31.1.18\EntradaBDSinergian
goto FIN
:P3775
Rem s.c 59242
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3775.txt \\172.31.1.18\EntradaBDSinergian
:FIN
Rem w.o 36336
:P3800
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3800.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem w.o 36,594
:P4460
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4460.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem w.o 36,880
:P3950
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3950.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem w.o 38,551
:P4540
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4540.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c 69689
:P3250
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3250.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c ?
:P3850
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3850.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c 71540
:P4400
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4400.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c ####
:P4420
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4420.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c ####
:P4520
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4520.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem S.c 76203
:P3400
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3400.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem 
:P3625
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3625.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem 
:P3350
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3350.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem 
:P4000
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4000.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem 
:PZPRN
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhc_precios_ZPRN.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
Rem 
:P3425
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3425.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:ZPRN_DES
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_ZPRN.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4420_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4420_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3250_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3250_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3350_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3350_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3850_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3850_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3950_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3950_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4000_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4000_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3800_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3800_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3400_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3400_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3625_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3625_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3750_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3750_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3775_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3775_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3425_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3425_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4520_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4520_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4400_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4400_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4560_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4560_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4540_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4540_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4460_AGR
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4460_ZAGR.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3250_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3250_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3350_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3350_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3400_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3400_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3425_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3425_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3625_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3625_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3750_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3750_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3775_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3775_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3800_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3800_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3850_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3850_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:3950_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_3950_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4000_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4000_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4400_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4400_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4420_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4420_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4460_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4460_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4520_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4520_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4540_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4540_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
:4560_ZH24
copy \\sapdatamx\sapdata\interfaces\sd\sinergianew\hhcd_precios_4560_ZH24.txt \\172.31.1.18\EntradaBDSinergian
echo Fin copia archivos HHC PRECIOS.
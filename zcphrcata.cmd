@echo off
echo Copia archivos catalogos RH.
echo.

copy \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_Empleados_TRX.txt        \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\catpuest_TRX.txt             \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\catpuesterr_TRX.txt          \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\catunid_TRX.txt              \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\catsociedades_TRX.txt        \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_AreasFuncio_TRX.txt      \\Molmexweb\ftproot$
copy \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_Movimientos_TRX.txt      \\Molmexweb\ftproot$
echo. Moviendo a archive.
move \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_Empleados_TRX.txt        \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\catpuest_TRX.txt             \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\catpuesterr_TRX.txt          \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\catunid_TRX.txt              \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\catsociedades_TRX.txt        \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_AreasFuncio_TRX.txt      \\sapdatatx\sapdata\interfaces\fi\archive
move \\sapdatatx\sapdata\interfaces\HR\catalogos\Cat_Movimientos_TRX.txt      \\sapdatatx\sapdata\interfaces\fi\archive
echo Fin copia archivos catalogos RH.

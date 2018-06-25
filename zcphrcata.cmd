@echo off
echo Copia archivos catalogos RH.
echo.

copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Empleados.txt        \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuest.txt             \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuesterr.txt          \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catunid.txt              \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catsociedades.txt        \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_AreasFuncionales.txt \\gruma1023.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Movimientos.txt      \\gruma1023.grumamex.com\ftproot$

copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Empleados.txt        \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuest.txt             \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuesterr.txt          \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catunid.txt              \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\catsociedades.txt        \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_AreasFuncionales.txt \\grumaweb00.grumamex.com\ftproot$
copy \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Movimientos.txt      \\grumaweb00.grumamex.com\ftproot$

move \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Empleados.txt        \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuest.txt             \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\catpuesterr.txt          \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\catunid.txt              \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\catsociedades.txt        \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_AreasFuncionales.txt \\sapdatamx\sapdata\interfaces\fi\archive
move \\sapdatamx\sapdata\interfaces\HR\catalogos\Cat_Movimientos.txt      \\sapdatamx\sapdata\interfaces\fi\archive
echo Fin copia archivos catalogos RH.

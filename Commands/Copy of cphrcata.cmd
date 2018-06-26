@echo off
echo Copia archivos catalogos RH.
echo.
w:
cd w:\interfaces\HR\catalogos
copy w:Cat_Empleados.txt \\gruma1023.grumamex.com\ftproot$
copy w:catpuest.txt \\gruma1023.grumamex.com\ftproot$
copy W:catpuesterr.txt \\gruma1023.grumamex.com\ftproot$
copy w:catunid.txt \\gruma1023.grumamex.com\ftproot$
copy w:catsociedades.txt \\gruma1023.grumamex.com\ftproot$
copy w:Cat_AreasFuncionales.txt \\gruma1023.grumamex.com\ftproot$

copy w:Cat_Empleados.txt \\delta18.gruma.com\ftproot$
copy w:catpuest.txt \\delta18.gruma.com\ftproot$
copy W:catpuesterr.txt \\delta18.gruma.com\ftproot$
copy w:catunid.txt \\delta18.gruma.com\ftproot$
copy w:catsociedades.txt \\delta18.gruma.com\ftproot$
copy w:Cat_AreasFuncionales.txt \\delta18.gruma.com\ftproot$

move w:Cat_Empleados.txt .\archive
move w:catpuest.txt .\archive
move W:catpuesterr.txt .\archive
move w:catunid.txt .\archive
move w:catsociedades.txt .\archive
move w:Cat_AreasFuncionales.txt .\archive
echo Fin copia archivos catalogos RH.

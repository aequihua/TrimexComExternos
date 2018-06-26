@echo off
REM Copia archivo gastos.txt al servidor GTMXBI00
echo.
copy \\txp\sapdata\interfaces\mm\gastos.txt \\gtmxbi00.molmex.local\dm_SIL\Fuentes /Z

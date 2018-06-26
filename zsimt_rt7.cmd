@echo off
echo Copia archivo RT7* al servidor GTMXBI00
echo.
copy \\txp\sapdata\interfaces\MM\RT7_8000.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8050.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8100.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8150.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8200.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8250.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8300.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8350.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
copy \\txp\sapdata\interfaces\MM\RT7_8400.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
if not exist \\txp\sapdata\interfaces\MM\RT7_8800.txt echo Archivo RT7_8800.txt no encontrado
REM copy \\txp\sapdata\interfaces\MM\RT7_8800.txt \\gtmxbi00.molmex.local\dm_SIM\Fuentes /Z
echo Termina Copia archivo RT7* al servidor GTMXBI00
echo.


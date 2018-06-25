@echo off
echo Copia archivos COBCIERRE_Molinera.txt - CarteraOBJMolinera.txt  al servidor GTMXBI00
echo.
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera.txt \\GTMXBI00\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolinera.txt  \\GTMXBI00\Cobranza\Objetivo
echo.
echo Copia archivos COBCIERRE_Molinera_AS.txt - CarteraOBJMolineraAS.txt  al servidor GTMXBI00
echo.
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera_AS.txt \\GTMXBI00\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolineraAS.txt  \\GTMXBI00\Cobranza\Objetivo
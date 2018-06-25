@echo off
echo Copia archivo COBCIERRE_Molinera.txt - CarteraOBJMolinera.txt  al servidor molmexcom.molmex.local
echo Copia archivo COBCIERRE_Molinera_AS.txt - CarteraOBJMolineraAS.txt
echo.
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera.txt \\molmexcom.molmex.local\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolinera.txt  \\molmexcom.molmex.local\Cobranza\Objetivo
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera_AS.txt \\molmexcom.molmex.local\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolineraAS.txt  \\molmexcom.molmex.local\Cobranza\Objetivo
echo Copia archivos al servidor GTMXBI00
echo.
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera.txt \\GTMXBI00\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolinera.txt  \\GTMXBI00\Cobranza\Objetivo
copy /Z \\txp\sapdata\interfaces\FI\molinera\COBCIERRE_Molinera_AS.txt \\GTMXBI00\Cobranza\Real
copy /Z \\txp\sapdata\interfaces\FI\molinera\CarteraOBJMolineraAS.txt  \\GTMXBI00\Cobranza\Objetivo
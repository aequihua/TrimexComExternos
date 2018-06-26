@echo off
echo Copia archivos Online.txt al servidor GRUMA1414
echo.

copy \\sapdatamx\sapdata\interfaces\sd\datamart\ingresos_on.txt           \\gruma1414.grumacntrl.com\datamart\fuentes\online
copy \\sapdatamx\sapdata\interfaces\sd\datamart\facturas_on.txt           \\gruma1414.grumacntrl.com\datamart\fuentes\online
copy \\sapdatamx\sapdata\interfaces\sd\datamart\pedidos_on.txt            \\gruma1414.grumacntrl.com\datamart\fuentes\online

echo Fin copia archivos catalogos RH.

@echo off
echo Copia archivo ProductosPlanta.txt y LotesPlanta.txt al servidor GRUMA1145
echo.
copy /Y /V \\sapdatamx\sapdata\interfaces\sd\prodisa\ProductosPlanta.txt \\gruma1145.grumamex.com\EntradaBdInventario
copy /Y /V \\sapdatamx\sapdata\interfaces\sd\prodisa\LotesPlanta.txt     \\gruma1145.grumamex.com\EntradaBdInventario

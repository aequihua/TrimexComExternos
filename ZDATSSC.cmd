@echo off
echo Copia archivo indicadores-cc.tx al Servidor \\MOLMEX1414.MOLMEX.LOCAL\Datamart\Fuentes\SSC
echo.
copy /Z /Y /V \\sapdatatx\sapdata\interfaces\sd\Datamart\indicadores-cc.txt \\Molmex1414\Datamart\Fuentes\SSC

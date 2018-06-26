@echo off
echo * Copia archivo clientes_gral_his.txt y clientes_ventas_his.txt a \\molmex1414\datamart\fuentes*
echo.

copy /Y /Z \\sapdatatx\sapdata\interfaces\sd\datamart\clientes_gral_his.txt \\molmex1414\Datamart\fuentes
copy /Y /Z \\sapdatatx\sapdata\interfaces\sd\datamart\clientes_ventas_his.txt \\molmex1414\Datamart\fuentes

@echo off
set format=%%Y%%m%%d
e:\info\bin\gawk "BEGIN{Format = \"set FECHA=%format%\";print strftime( Format, systime() )}" > }{.bat
call }{
set format=
time /t >   \\sapdatatx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
date /t >>  \\sapdatatx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
echo test > \\sapdatatx\sapdata\interfaces\sd\Datamart\alarma
echo *** copia alarma
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\alarma \\Molmex1414\datamart\fuentes
del \\sapdatatx\sapdata\interfaces\sd\Datamart\alarma
echo ***** Copia archivos DATAMART a MOLMEX1414 *****
echo copia   ***  pedidos.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\pedidos.txt \\Molmex1414\datamart\fuentes\pedidos.txt
echo copia   ***  entregas.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\entregas.txt \\Molmex1414\datamart\fuentes\entregas.txt
echo copia   ***  facturas.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\facturas.txt \\Molmex1414\datamart\fuentes\facturas.txt
echo copia   ***  materiales.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\materiales.txt \\Molmex1414\datamart\fuentes\materiales.txt
echo copia   ***  clientes_gral.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\clientes_gral.txt \\Molmex1414\datamart\fuentes\clientes_gral.txt
echo copia   ***  clientes_sociedad.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\clientes_sociedad.txt \\Molmex1414\datamart\fuentes\clientes_sociedad.txt
echo copia   ***  clientes_ventas.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\clientes_ventas.txt \\Molmex1414\datamart\fuentes\clientes_ventas.txt
echo copia   ***  gestion_creditos.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\gestion_creditos.txt \\Molmex1414\datamart\fuentes\gestion_creditos.txt
echo copia   ***  statusped_deta.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\statusped_deta.txt \\Molmex1414\datamart\fuentes\statusped_deta.txt
echo copia   ***  agentes_dm.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\agentes_dm.txt \\Molmex1414\datamart\fuentes\agentes_dm.txt
echo copia   ***  produccion.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\produccion.txt \\Molmex1414\datamart\fuentes\produccion.txt
REM echo copia   ***  facturas_prodisa.txt
REM copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\facturas_prodisa.txt \\Molmex1414\datamart\fuentes\facturas_prodisa.txt
echo copia   ***  contrarecibos.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\contrarecibos.txt \\Molmex1414\datamart\fuentes\contrarecibos.txt
REM echo copia   ***  clientes_jerarquias.txt
REM copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\clientes_jerarquias.txt \\Molmex1414\datamart\fuentes\clientes_jerarquias.txt
echo copia   ***  ind_fletes.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\ind_fletes.txt \\Molmex1414\datamart\fuentes\ind_fletes.txt
echo copia   ***  INVyyyymmdd.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\inv%FECHA%.txt \\Molmex1414\datamart\fuentes
REM echo copia   ***  facturas_prodisa.txt a GRUMA1145
REM copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\facturas_prodisa.txt \\172.31.1.18\EntradaBDProdisa
echo copia   ***  ingresos.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\ingresos.txt \\Molmex1414\datamart\fuentes
echo copia   ***  condprecio.txt
copy /Z /Y \\sapdatatx\sapdata\interfaces\sd\Datamart\condprecio.txt \\Molmex1414\datamart\fuentes
echo get alarma
copy /Z /Y \\Molmex1414\datamart\fuentes\alarma \\sapdatatx\sapdata\interfaces\sd\Datamart\alarma
date /t >> \\sapdatatx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
if not exist \\sapdatatx\sapdata\interfaces\sd\Datamart\alarma echo "Problemas con copia de SAP a MOLMEX1414"

@echo off
set format=%%Y%%m%%d
e:\info\bin\gawk "BEGIN{Format = \"set FECHA=%format%\";print strftime( Format, systime() )}" > }{.bat
call }{
set format=
time /t >   \\sapdatamx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
date /t >>  \\sapdatamx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
echo test > \\sapdatamx\sapdata\interfaces\sd\Datamart\alarma
echo copia alarma
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\alarma \\delta19\Fuentes
del \\sapdatamx\sapdata\interfaces\sd\Datamart\alarma
echo copia   ***  pedidos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\pedidos.txt \\delta19\Fuentes\pedidos.txt
echo copia   ***  entregas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\entregas.txt \\delta19\Fuentes\entregas.txt
echo copia   ***  facturas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\facturas.txt \\delta19\Fuentes\facturas.txt
echo copia   ***  materiales.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\materiales.txt \\delta19\Fuentes\materiales.txt
echo copia   ***  clientes_gral.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_gral.txt \\delta19\Fuentes\clientes_gral.txt
echo copia   ***  clientes_sociedad.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_sociedad.txt \\delta19\Fuentes\clientes_sociedad.txt
echo copia   ***  clientes_ventas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_ventas.txt \\delta19\Fuentes\clientes_ventas.txt
echo copia   ***  gestion_creditos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\gestion_creditos.txt \\delta19\Fuentes\gestion_creditos.txt
echo copia   ***  statusped_deta.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\statusped_deta.txt \\delta19\Fuentes\statusped_deta.txt
echo copia   ***  agentes_dm.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\agentes_dm.txt \\delta19\Fuentes\agentes_dm.txt
echo copia   ***  produccion.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\produccion.txt \\delta19\Fuentes\produccion.txt
echo copia   ***  facturas_prodisa.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\facturas_prodisa.txt \\delta19\Fuentes\facturas_prodisa.txt
echo copia   ***  contrarecibos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\contrarecibos.txt \\delta19\Fuentes\contrarecibos.txt
echo copia   ***  clientes_jerarquias.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_jerarquias.txt \\delta19\Fuentes\clientes_jerarquias.txt
echo copia   ***  ind_fletes.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\ind_fletes.txt \\delta19\Fuentes\ind_fletes.txt
echo copia   ***  INVyyyymmdd.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\inv%FECHA%.txt \\delta19\Fuentes
echo get alarma
copy /Z /Y \\delta19\Fuentes\alarma \\sapdatamx\sapdata\interfaces\sd\Datamart\alarma
date /t >> \\sapdatamx\sapdata\interfaces\sd\Datamart\bin\MXDatamart.log
if not exist \\sapdatamx\sapdata\interfaces\sd\Datamart\alarma echo "Problemas con copia de SAP a Grumiw03"
echo copia   ***  facturas_prodisa.txt a GRUMA1145
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\facturas_prodisa.txt \\172.31.1.18\EntradaBDProdisa
echo *** Copia archivos a GRUMA1011 ***
echo copia   ***  agentes_dm.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\agentes_dm.txt \\gruma1011\datamart\fuentes
echo copia   ***  materiales.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\materiales.txt \\gruma1011\datamart\fuentes
echo copia   ***  ind_fletes.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\ind_fletes.txt \\gruma1011\datamart\fuentes
echo copia   ***  clientes_jerarquias.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_jerarquias.txt \\gruma1011\datamart\fuentes
echo copia   ***  clientes_gral.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_gral.txt \\gruma1011\datamart\fuentes
echo copia   ***  clientes_sociedad.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_sociedad.txt \\gruma1011\datamart\fuentes
echo copia   ***  clientes_ventas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\clientes_ventas.txt \\gruma1011\datamart\fuentes
echo copia   ***  gestion_creditos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\gestion_creditos.txt \\gruma1011\datamart\fuentes
echo copia   ***  facturas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\facturas.txt \\gruma1011\datamart\fuentes
echo copia   ***  facturas_prodisa.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\facturas_prodisa.txt \\gruma1011\datamart\fuentes
echo copia   ***  entregas.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\entregas.txt \\gruma1011\datamart\fuentes
echo copia   ***  pedidos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\pedidos.txt \\gruma1011\datamart\fuentes
echo copia   ***  produccion.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\produccion.txt \\gruma1011\datamart\fuentes
echo copia   ***  statusped_deta.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\statusped_deta.txt \\gruma1011\datamart\fuentes
echo copia   ***  contrarecibos.txt
copy /Z /Y \\sapdatamx\sapdata\interfaces\sd\Datamart\contrarecibos.txt \\gruma1011\datamart\fuentes

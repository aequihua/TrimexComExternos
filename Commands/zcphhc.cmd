@echo off
echo Copia HHC GIMSA.
echo.
w:
cd w:\interfaces\sd\gimsa
copy w:facturas.txt \\DELTA08.gruma.com\EntradaBD\facturas.txt
copy w:hhc_pedspend.txt \\DELTA08.gruma.com\EntradaBD\hhc_pedspend.txt
copy w:hhc_materiales.txt \\DELTA08.gruma.com\EntradaBD\hhc_materiales.txt
copy w:hhc_cartera.txt \\DELTA08.gruma.com\EntradaBD\hhc_cartera.txt
copy w:hhc_agentes.txt \\DELTA08.gruma.com\EntradaBD\hhc_agentes.txt
copy w:hhc_sociedad.txt \\DELTA08.gruma.com\EntradaBD\hhc_companias.txt
copy w:hhc_estados.txt \\DELTA08.gruma.com\EntradaBD\hhc_estados.txt
copy w:hhc_municipios.txt \\DELTA08.gruma.com\EntradaBD\hhc_municipios.txt
copy w:hhc_centros.txt \\DELTA08.gruma.com\EntradaBD\hhc_centros.txt
copy w:hhc_tipoprod.txt \\DELTA08.gruma.com\EntradaBD\hhc_tipoprod.txt
cd w:\interfaces\sd\datamart
copy w:clientes_gral.txt \\DELTA08.gruma.com\EntradaBD\clientes_gral.txt
copy w:clientes_ventas.txt \\DELTA08.gruma.com\EntradaBD\clientes_ventas.txt
copy w:clientes_sociedad.txt \\DELTA08.gruma.com\EntradaBD\clientes_sociedad.txt
copy w:gestion_creditos.txt \\DELTA08.gruma.com\EntradaBD\clientes_creditos.txt
rem copy w:hhc_mcancel.txt \\DELTA08.gruma.com\EntradaBD\hhc_mcancel.txt
echo Fin copia archivos HHC GIMSA.

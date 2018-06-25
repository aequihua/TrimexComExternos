@echo off
echo Copia HHC SINERGIA.
echo.
w:
cd w:\interfaces\sd\sinergia
copy w:agentes_dm.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_agentes_dm.txt
copy w:clientes_gral.txt \\DELTA08.gruma.com\EntradaBDSinergia\clientes_gral.txt
copy w:clientes_sociedad.txt \\DELTA08.gruma.com\EntradaBDSinergia\clientes_sociedad.txt
copy w:clientes_ventas.txt \\DELTA08.gruma.com\EntradaBDSinergia\clientes_ventas.txt
copy w:facturas.txt \\DELTA08.gruma.com\EntradaBDSinergia\facturas.txt
copy w:gestion_creditos.txt \\DELTA08.gruma.com\EntradaBDSinergia\clientes_creditos.txt
copy w:materiales.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_materiales.txt
copy w:hhc_cartera.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_cartera.txt
copy w:hhc_centros.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_centros.txt
copy w:hhc_estados.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_estados.txt
copy w:hhc_gposven.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_gposven.txt
copy w:hhc_motivos.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_mcancel.txt
copy w:hhc_municipios.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_municipios.txt
copy w:hhc_ofnavtas.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_ofnavtas.txt
copy w:hhc_pedspend.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_pedspend.txt
copy w:hhc_sociedad.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_companias.txt
copy w:hhc_tipoprod.txt \\DELTA08.gruma.com\EntradaBDSinergia\hhc_tipoprod.txt
echo Fin copia archivos HHC SINERGIA

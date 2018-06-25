@echo off
echo Copia HHC TRIGO.
echo.
w:
cd w:\interfaces\sd\trigo
copy w:agentes_dm.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_agentes_dm.txt
copy w:clientes_gral.txt \\DELTA08.gruma.com\EntradaBDTrigo\clientes_gral.txt
copy w:clientes_sociedad.txt \\DELTA08.gruma.com\EntradaBDTrigo\clientes_sociedad.txt
copy w:clientes_ventas.txt \\DELTA08.gruma.com\EntradaBDTrigo\clientes_ventas.txt
copy w:facturas.txt \\DELTA08.gruma.com\EntradaBDTrigo\facturas.txt
copy w:gestion_creditos.txt \\DELTA08.gruma.com\EntradaBDTrigo\clientes_creditos.txt
copy w:materiales.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_materiales.txt
copy w:hhc_cartera.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_cartera.txt
copy w:hhc_centros.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_centros.txt
copy w:hhc_estados.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_estados.txt
copy w:hhc_gposven.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_gposven.txt
copy w:hhc_motivos.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_mcancel.txt
copy w:hhc_municipios.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_municipios.txt
copy w:hhc_ofnavtas.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_ofnavtas.txt
copy w:hhc_pedspend.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_pedspend.txt
copy w:hhc_sociedad.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_companias.txt
copy w:hhc_tipoprod.txt \\DELTA08.gruma.com\EntradaBDTrigo\hhc_tipoprod.txt
echo Fin copia archivos HHC TRIGO.

@echo off
echo Copia HHC PRODISA %1 AM
echo.
if "%1" == "0130" goto AM0130
if "%1" == "0500" goto AM0500
if "%1" == "5050" goto AM5050
:ERROR1
echo Use parametro valido [0130] o [0500].
goto FIN
:AM0130
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_municipios.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_estados.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\materiales.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_centros.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\clientes_gral.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\clientes_sociedad.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\clientes_ventas.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\gestion_creditos.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_gposven.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_ofnavtas.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_sociedad.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_esquema.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\gimsa\agentes_dm_prodisa.txt \\172.31.1.18\EntradaBDProdisa
goto FIN
:AM0500
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_invini.txt \\172.31.1.18\EntradaBDProdisa
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_vtasacum.txt \\172.31.1.18\EntradaBDProdisa
goto FIN
:AM5050
copy \\sapdatamx\sapdata\interfaces\sd\prodisa\hhc_invini_5050.txt \\172.31.1.18\EntradaBDProdisa
:FIN
echo Fin copia archivos HHC PRODISA %1 AM.

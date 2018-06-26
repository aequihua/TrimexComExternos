@echo off
echo Copia archivos de SICF_Catalogos a \\molmex1021.molmex.local\dm_finanzas.
echo.
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\molmex1021.molmex.local\dm_finanzas
echo Copia archivos de SICF_Catalogos a \\GTMXBI00\dm_Cartera\fuentes.
echo.
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\GTMXBI00\dm_Cartera\fuentes
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\GTMXBI00\dm_Cartera\fuentes
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\GTMXBI00\dm_Cartera\fuentes
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\GTMXBI00\dm_Cartera\fuentes
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\GTMXBI00\dm_Cartera\fuentes
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\GTMXBI00\dm_Cartera\fuentes

if exist \\GTMXBI00\dm_Cartera\fuentes\sicfsoci.txt (
  echo.
  echo Archivos copiados.
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
  move \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\CITXP\sapdata\interfaces\fi\if044\sicf_catal
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos de corporativo
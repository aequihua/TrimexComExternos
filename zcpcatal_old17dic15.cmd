@echo off
echo Copia archivos de SICF_Catalogos.
echo.
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\molmex1021.molmex.local\dm_finanzas
copy \\CITXP\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\molmex1021.molmex.local\dm_finanzas
if exist \\molmex1021.molmex.local\dm_finanzas\sicfsoci.txt (
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
@echo off
echo Copia archivos de SICF_Catalogos.
echo.
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\delta19.gruma.com\DM_Finanzas
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\delta19.gruma.com\DM_Finanzas
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\delta19.gruma.com\DM_Finanzas
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\delta19.gruma.com\DM_Finanzas
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\delta19.gruma.com\DM_Finanzas
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\delta19.gruma.com\DM_Finanzas
if exist \\delta19.gruma.com\DM_Finanzas\sicfsoci.txt (
  echo.
  echo Archivos copiados.
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfceco.txt   \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfctas.txt   \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcmat.txt   \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcebe.txt   \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfcebe02.txt \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
  move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\sicfsoci.txt   \\sapdatamx\sapdata\interfaces\fi\if044\sicf_catal
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos de corporativo
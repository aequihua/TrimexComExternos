@echo off
echo Copia archivos de corporativo
echo.
copy \\sapdatamx\sapdata\interfaces\fi\sicf*.txt \\delta19.gruma.com\fuentesp\sicf*.txt
copy \\sapdatamx\sapdata\interfaces\fi\sicf.rep  \\delta19.gruma.com\fuentesp
if exist \\delta19.gruma.com\fuentesp\sicf.rep (
  echo.
  echo Archivos copiados.
  del  \\delta19.gruma.com\fuentesp\sicf.rep
  move \\sapdatamx\sapdata\interfaces\fi\sicf*.txt \\sapdatamx\sapdata\interfaces\fi\archive
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos de corporativo

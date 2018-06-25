@echo off
echo Copia archivos de corporativo
echo.
w:
cd w:\interfaces\fi\if044\newdata
copy w:sicf* \\rioplata08.gruma.com\Finanzas\sicf*
if exist \\rioplata08.gruma.com\Finanzas\sicf.rep (
  echo.
  echo Archivos copiados.
  del \\rioplata08.gruma.com\Finanzas\sicf.rep
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos de corporativo

@echo off
echo Copia archivos de corporativo a DELTA19
echo.
w:
cd w:\interfaces\fi\if044\newdata
copy w:sicf* \\delta19.gruma.com\dm_finanzas\corporativo\fuentes\sicf*
if exist \\delta19.gruma.com\dm_finanzas\corporativo\fuentes\sicf.rep (
  echo.
  echo Archivos copiados.
  del \\delta19.gruma.com\dm_finanzas\corporativo\fuentes\sicf.rep
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos de corporativo a DELTA19

@echo off
rem solicitado por Pablo Oropeza en work order 28584
echo Copia archivos de corporativo
echo.
w:
cd w:\interfaces\MM
copy w:fac_produccion_NVO.txt \\delta19.gruma.com\datamart\fuentes\sim
copy w:fac_empaque_NVO.txt \\delta19.gruma.com\datamart\fuentes\sim
if exist \\delta19.gruma.com\datamart\fuentes\sim\fac_empaque_NVO.txt (
  echo.
  echo Archivos copiados.
) else (
  echo.
  echo ERROR == Archivos no copiados.
)
echo Fin copia archivos.

@echo off
echo Copia archivos de GIMSA Finanzas
echo.
copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\gimsagtos.txt \\delta19.gruma.com\fuentes\gimsagtos.txt
if exist \\delta19.gruma.com\Fuentes\gimsagtos.txt (
  echo.
  echo Archivo copiado.
) else (
echo.
echo ERROR == Archivos no copiado.
)
echo Fin copia archivos de Gimsa Finanzas

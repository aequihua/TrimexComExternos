@echo off
echo Copia archivos de GIMSA corporativo
echo.
w:
cd w:\interfaces\fi\
copy w:sicfpcagtos*.txt \\delta19.gruma.com\fuentes\sicfpcagtos*.txt
copy w:sicfcecogtos*.txt \\delta19.gruma.com\fuentes\sicfcecogtos*.txt
copy w:sicfcelemgtos*.txt \\delta19.gruma.com\fuentes\sicfcelemgtos*.txt
copy w:sicf.rep \\delta19.gruma.com\fuentes
if exist \\delta19.gruma.com\fuentes\sicf.rep (
  echo.
  echo Archivos copiados.
  del \\delta19.gruma.com\fuentes\sicf.rep
  move sicf*.txt .\archive
) else (
echo.
echo ERROR == Archivos no copiados.
)
echo Fin copia archivos GIMSA de corporativo

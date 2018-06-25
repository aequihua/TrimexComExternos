@echo off
echo Copia archivos de GIMSA SIM
echo.
w:
cd \interfaces\fi\if044\newdata
copy w:mtto.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\mtto.txt (
  echo.
  echo Archivo mtto.txt copiado.
  move w:mtto.txt ..\archive
) else (
echo.
echo ERROR == Archivos mtto.txt no copiado.
)
cd W:\interfaces\mm
copy w:produccion.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\production.txt (
  echo.
  echo Archivo produccion.txt copiado.
  move w:produccion.txt ..\archive
) else (
echo.
echo ERROR == Archivos production no copiado.
)
copy w:energeticos.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\energeticos.txt (
  echo.
  echo Archivo energeticos.txt copiado.
  move w:energeticos.txt ..\archive
) else (
echo.
echo ERROR == Archivos energeticos no copiado.
)
copy w:molienda.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\molienda.txt (
  echo.
  echo Archivo molienda.txt copiado.
  move w:molienda.txt ..\archive
) else (
echo.
echo ERROR == Archivos molienda no copiado.
)
copy w:paros.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\paros.txt (
  echo.
  echo Archivo paros.txt copiado.
  move w:paros.txt ..\archive
) else (
echo.
echo ERROR == Archivos paros no copiado.
)
copy w:nejayote.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\nejayote.txt (
  echo.
  echo Archivo nejayote.txt copiado.
  move w:nejayote.txt ..\archive
) else (
echo.
echo ERROR == Archivos nejayote no copiado.
)
copy w:subproductos.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\subproductos.txt (
  echo.
  echo Archivo subproductos.txt copiado.
  move w:subproductos.txt ..\archive
) else (
echo.
echo ERROR == Archivos subproducto no copiado.
)
copy w:ege.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\ege.txt (
  echo.
  echo Archivo ege.txt copiado.
  move w:ege.txt ..\archive
) else (
echo.
echo ERROR == Archivos ege no copiado.
)
copy w:reprocesos.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\reprocesos.txt (
  echo.
  echo Archivo reprocesos.txt copiado.
  move w:reprocesos.txt ..\archive
) else (
echo.
echo ERROR == Archivos reprocesos no copiado.
)
copy w:empaque.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\empaque.txt (
  echo.
  echo Archivo empaque.txt copiado.
  move w:empaque.txt ..\archive
) else (
echo.
echo ERROR == Archivos empaque no copiado.
)
copy w:sim_quejas.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\sim_quejas.txt (
  echo.
  echo Archivo sim_quejas.txt copiado.
  move w:sim_quejas.txt ..\archive
) else (
echo.
echo ERROR == Archivos sim_quejas no copiado.
)
copy w:cierre_diario.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\cierre_diario.txt (
  echo.
  echo Archivo cierre_diario.txt copiado.
  move w:cierre_diario.txt ..\archive
) else (
echo.
echo ERROR == Archivos cierre_diario no copiado.
)
copy w:tarimas.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\tarimas.txt (
  echo.
  echo Archivo tarimas.txt copiado.
  move w:tarimas.txt ..\archive
) else (
echo.
echo ERROR == Archivos tarimas no copiado.
)
copy w:energeticos3750.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\energeticos3750.txt (
  echo.
  echo Archivo energeticos3750.txt copiado.
  move w:energeticos3750.txt ..\archive
) else (
echo.
echo ERROR == Archivo energeticos3750.txt no copiado.
)
copy w:nejayote3750.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\nejayote3750.txt (
  echo.
  echo Archivo nejayote3750.txt copiado.
  move w:nejayote3750.txt ..\archive
) else (
echo.
echo ERROR == Archivo nejayote3750.txt no copiado.
)
copy w:subproductos3750.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\subproductos3750.txt (
  echo.
  echo Archivo subproductos3750.txt copiado.
  move w:subproductos3750.txt ..\archive
) else (
echo.
echo ERROR == Archivo subproductos3750.txt no copiado.
)
copy w:ege3750.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\ege3750.txt (
  echo.
  echo Archivo ege3750.txt copiado.
  move w:ege3750.txt ..\archive
) else (
echo.
echo ERROR == Archivo ege3750.txt no copiado.
)
copy w:3250_cunitarios.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\3250_cunitarios.txt (
  echo.
  echo Archivo 3250_cunitarios copiado.
  move w:3250_cunitarios.txt ..\archive
) else (
echo.
echo ERROR == Archivo 3250_cunitarios.txt no copiado.
)
copy w:3750_cunitarios.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\3750_cunitarios.txt (
  echo.
  echo Archivo 3750_cunitarios.txt copiado.
  move w:3750_cunitarios.txt ..\archive
) else (
echo.
echo ERROR == Archivo 3750_cunitarios.txt no copiado.
)
copy w:CATDEFTAR.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\CATDEFTAR.txt (
  echo.
  echo Archivo CATDEFTAR.txt copiado.
  move w:CATDEFTAR.txt ..\archive
) else (
echo.
echo ERROR == Archivo CATDEFTAR.txt no copiado.
)
copy w:CATFAMHAR.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\CATFAMHAR.txt (
  echo.
  echo Archivo CATFAMHAR.txt copiado.
  move w:CATFAMHAR.txt ..\archive
) else (
echo.
echo ERROR == Archivo CATFAMHAR.txt no copiado.
)
copy w:aditivos.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\aditivos.txt (
  echo.
  echo Archivo aditivos.txt copiado.
  move w:aditivos.txt ..\archive
) else (
echo.
echo ERROR == Archivo aditivos.txt no copiado.
)
copy w:CATSUBPRO.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\CATSUBPRO.txt (
  echo.
  echo Archivo CATSUBPRO.txt copiado.
  move w:CATSUBPRO.txt ..\archive
) else (
echo.
echo ERROR == Archivo CATSUBPRO.txt no copiado.
)
copy w:ArtExternos.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\ArtExternos.txt (
  echo.
  echo Archivo ArtExternos.txt copiado.
  move w:ArtExternos.txt ..\archive
) else (
echo.
echo ERROR == Archivo ArtExternos.txt no copiado.
)
copy w:CATMATPT.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\CATMATPT.txt (
  echo.
  echo Archivo CATMATPT.txt copiado.
  move w:CATMATPT.txt ..\archive
) else (
echo.
echo ERROR == Archivo CATMATPT.txt no copiado.
)
copy w:SIM_CIERRE.TXT \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\SIM_CIERRE.TXT (
  echo.
  echo Archivo SIM_CIERRE.TXT copiado.
  move w:SIM_CIERRE.TXT ..\archive
) else (
echo.
echo ERROR == Archivo SIM_CIERRE.TXT no copiado.
)
copy w:energeticos3625.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\energeticos3625.txt (
  echo.
  echo Archivo energeticos3625.txt copiado.
  move w:energeticos3625.txt ..\archive
) else (
echo.
echo ERROR == Archivo energeticos3625.txt no copiado.
)
copy w:nejayote3625.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\nejayote3625.txt (
  echo.
  echo Archivo nejayote3625.txt copiado.
  move w:nejayote3625.txt ..\archive
) else (
echo.
echo ERROR == Archivo nejayote3625.txt no copiado.
)
)
copy w:subproductos3625.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\subproductos3625.txt (
  echo.
  echo Archivo subproductos3625.txt copiado.
  move w:subproductos3625.txt ..\archive
) else (
echo.
echo ERROR == Archivo subproductos3625.txt no copiado.
)
copy w:ege3625.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\ege3625.txt (
  echo.
  echo Archivo ege3625.txt copiado.
  move w:ege3625.txt ..\archive
) else (
echo.
echo ERROR == Archivo ege3625.txt no copiado.
)
copy w:3625_cunitarios.txt \\delta19.gruma.com\DataMart\fuentes\SIM /Z
if exist \\delta19.gruma.com\DataMart\fuentes\SIM\3625_cunitarios.txt (
  echo.
  echo Archivo 3625_cunitarios.txt copiado.
  move w:3625_cunitarios.txt ..\archive
) else (
echo.
echo ERROR == Archivo 3625_cunitarios.txt no copiado.
)


rem Agregados el 31 de julio por Cándido Cáceres, de acuerdo a work order 19864
w:
cd \interfaces\MM
set Archivos=energeticos3950.txt nejayote3950.txt subproductos3950.txt ege3950.txt 3950_cunitarios.txt energeticos4400.txt nejayote4400.txt subproductos4400.txt ege4400.txt 4400_cunitarios.txt energeticos3800.txt nejayote3800.txt subproductos3800.txt ege3800.txt 3800_cunitarios.txt energeticos4560.txt nejayote4560.txt subproductos4560.txt ege4560.txt 4560_cunitarios.txt energeticos4520.txt nejayote4520.txt subproductos4520.txt ege4520.txt 4520_cunitarios.txt energeticos3850.txt nejayote3850.txt subproductos3850.txt ege3850.txt 3850_cunitarios.txt 

set Destino=\\delta19\Datamart\Fuentes\SIM
w:
cd \interfaces\mm\
for %%i in ( %Archivos% ) do if not exist %%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist %%i copy %%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move %%i ..\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)




echo Fin copia archivos de Gimsa SIM
:end
echo.
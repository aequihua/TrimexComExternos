@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 31 de Marzo por Manuel Cavazos de acuerdo a work order 31049.
set Archivos=fact_prh_3250.txt fact_prh_3350.txt fact_prh_3400.txt fact_prh_3425.txt fact_prh_3625.txt fact_prh_3750.txt fact_prh_3800.txt fact_prh_3850.txt fact_prh_3950.txt fact_prh_4000.txt fact_prh_4400.txt fact_prh_4420.txt fact_prh_4460.txt fact_prh_4520.txt fact_prh_4540.txt fact_prh_4560.txt 

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
echo.
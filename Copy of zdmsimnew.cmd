@echo off
echo Copia archivos de GIMSA SIM
echo.


rem Modificado el 15 de agosto por C�ndido C�ceres de acuerdo a work order 20512.

set Archivos=molienda.txt paros.txt reprocesos.txt cierre_diario.txt tarimas.txt catdeftar.txt catfatmhar.txt aditivos.txt catsubpro.txt artexternos.txt catmatpt.txt sim_cierre.txt

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

Set Archivos=mtto.txt
w:
cd \interfaces\fi\if044\newdata
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

Set Archivos=sim_quejas.txt
w:
cd \interfaces\sd\datamart
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
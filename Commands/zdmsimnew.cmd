@echo off
echo Copia archivos de GIMSA SIM
echo.

rem Modificado el 14 de abril por Cándido Cáceres de acuerdo a service call 49761.

set Archivos=molienda.txt paros.txt reprocesos.txt cierre_diario.txt tarimas.txt catdeftar.txt catfatmhar.txt aditivos.txt catsubpro.txt artexternos.txt catmatpt.txt sim_cierre.txt fact_prh_3250.txt

set Destino=\\delta19\Datamart\Fuentes\SIM

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\mm\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist     \\sapdatamx\sapdata\interfaces\mm\%%i copy \\sapdatamx\sapdata\interfaces\mm\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\mm\%%i \\sapdatamx\sapdata\interfaces\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

Set Archivos=mtto.txt

for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\fi\if044\newdata\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist     \\sapdatamx\sapdata\interfaces\fi\if044\newdata\%%i copy \\sapdatamx\sapdata\interfaces\fi\if044\newdata\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\fi\if044\newdata\%%i \\sapdatamx\sapdata\interfaces\fi\if044\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

Set Archivos=sim_quejas.txt


for %%i in ( %Archivos% ) do if not exist \\sapdatamx\sapdata\interfaces\sd\datamart\%%i echo %%i no encontrado
for %%i in ( %Archivos% ) do if exist \\sapdatamx\sapdata\interfaces\sd\datamart\%%i copy \\sapdatamx\sapdata\interfaces\sd\datamart\%%i %Destino%
for %%i in ( %Archivos% ) do if exist %Destino%\%%i (
        echo.
        echo Archivo %%i copiado.
        move \\sapdatamx\sapdata\interfaces\sd\datamart\%%i \\sapdatamx\sapdata\interfaces\sd\archive
       )else (
        echo.
        echo ERROR == Archivo %%i no copiado ==
)

echo Fin copia archivos de Gimsa SIM
echo.

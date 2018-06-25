@echo off
echo Copia archivos BONHHCST*.txt al servidor \\172.31.1.18\entradabdsinergian\
echo.
w:
cd \\sapdatamx\sapdata\interfaces\sd\sinergianew\
move w:\interfaces\sd\sinergianew\BONHHCST*.txt \\172.31.1.18\entradabdsinergian


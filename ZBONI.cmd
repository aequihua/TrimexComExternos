@echo off
echo Copia archivos BONHHCST*.txt al servidor \\172.31.1.18\entradabdsinergian\
echo.
if exist \\sapdatamx\sapdata\interfaces\sd\sinergianew\BONHHCST*.txt move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\BONHHCST*.txt \\172.31.1.18\entradabdsinergian
if exist \\sapdatamx\sapdata\interfaces\sd\sinergianew\MCHHCLOG*.TXT move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\MCHHCLOG*.TXT \\172.31.1.18\entradabdsinergian
if exist \\sapdatamx\sapdata\interfaces\sd\sinergianew\CCHHCLOG*.TXT move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\CCHHCLOG*.TXT \\172.31.1.18\entradabdsinergian

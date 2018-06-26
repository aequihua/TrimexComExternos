@echo off
echo Copia archivos BONHHCST*.txt al servidor \\172.31.1.18\entradabdsinergian\
echo.
move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\BONHHCST*.txt \\172.31.1.18\entradabdsinergian
move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\MCHHCLOG*.TXT \\172.31.1.18\entradabdsinergian
move /Y \\sapdatamx\sapdata\interfaces\sd\sinergianew\CCHHCLOG*.TXT \\172.31.1.18\entradabdsinergian

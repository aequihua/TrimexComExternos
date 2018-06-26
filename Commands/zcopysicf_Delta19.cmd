:begin
@echo off
REM copia archivos de \\sapdatamx\sapdata\interfaces\fi\Agropecuario\sicf*.txt a \\delta19\dm_finanzas\Agropecuario\Fuentes
echo.
set Fecha=%DATE%
set Hora=%TIME%
echo %Fecha% %Hora%
copy /Y \\sapdatamx\sapdata\interfaces\fi\Agropecuario\sicf*.txt \\delta19\dm_finanzas\Agropecuario\Fuentes
echo  Termina copia de archivos sicf*.txt a \\delta19\dm_finanzas\Agropecuario\Fuentes
echo  Inicio: %Fecha% % Hora%   Termino: %DATE% %TIME%

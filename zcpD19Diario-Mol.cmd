@echo off
echo * Copia archivo a \\molmex1021.molmex.local\dm_Cartera\fuentes *
echo.
if \\sapdatatx\sapdata\interfaces\fi\"%1"=="" goto error
if \\sapdatatx\sapdata\interfaces\fi\"%2"=="" goto error
if not exist \\sapdatatx\sapdata\interfaces\fi\%1 (
  echo error: No existe el archivo %1
  goto end
)
date /t >   \\sapdatatx\sapdata\interfaces\fi\log\%~n1.log
time /t >>  \\sapdatatx\sapdata\interfaces\fi\log\%~n1.log
copy /Y     \\sapdatatx\sapdata\interfaces\fi\%1 \\molmex1021.molmex.local\%2
echo * Copia archivo a \\GTMXBI00\dm_Cartera\fuentes *
echo.
copy /Y     \\sapdatatx\sapdata\interfaces\fi\%1 \\GTMXBI00\%2
move /Y     \\sapdatatx\sapdata\interfaces\fi\%1 \\sapdatatx\sapdata\interfaces\fi\archive
time /t >>  \\sapdatatx\sapdata\interfaces\fi\%~n1.log
cscript.exe \\txp\ComandosExternosTXP\RespaldoSicfMovTxtSegunDiaSemana.vbs
goto end
:error
echo use:  %0 filename sharename
:end
echo.
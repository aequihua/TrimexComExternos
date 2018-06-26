@echo off
echo * Copia archivo a \\DELTA19\sharename *
echo.
if \\sapdatamx\sapdata\interfaces\fi\"%1"=="" goto error
if \\sapdatamx\sapdata\interfaces\fi\"%2"=="" goto error
if not exist \\sapdatamx\sapdata\interfaces\fi\%1 (
  echo error: No existe el archivo %1
  goto end
)
date /t >   \\sapdatamx\sapdata\interfaces\fi\log\%~n1.log
time /t >>  \\sapdatamx\sapdata\interfaces\fi\log\%~n1.log
copy /Y     \\sapdatamx\sapdata\interfaces\fi\%1 \\delta19.gruma.com\%2
move /Y     \\sapdatamx\sapdata\interfaces\fi\%1 \\sapdatamx\sapdata\interfaces\fi\archive
time /t >>  \\sapdatamx\sapdata\interfaces\fi\%~n1.log
cscript.exe \\sapmxp\ComandosExternosMXP\RespaldoSicfMovTxtSegunDiaSemana.vbs
goto end
:error
echo use:  %0 filename sharename
:end
echo.
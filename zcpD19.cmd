@echo off
echo * Copia archivo a \\molmex1021.molmex.local\sharename *
echo.
if \\TXP\sapdata\interfaces\fi\"%1"=="" goto error
if \\TXP\sapdata\interfaces\fi\"%2"=="" goto error
if not exist \\TXP\sapdata\interfaces\fi\%1 (
  echo error: No existe el archivo %1
  goto end
)
date /t >  \\TXP\sapdata\interfaces            \fi\log\%~n1.log
time /t >> \\TXP\sapdata\interfaces            \fi\log\%~n1.log
copy       \\TXP\sapdata\interfaces\fi\%1       \\molmex1021.molmex.local\%2
move       \\TXP\sapdata\interfaces\fi\%1       \\TXP\sapdata\interfaces\fi\archive
time /t >> \\TXP\sapdata\interfaces\fi\%~n1.log
goto end
:error
echo use:  %0 filename sharename
:end
echo.

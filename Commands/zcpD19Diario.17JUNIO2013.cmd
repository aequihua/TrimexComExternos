@echo off
echo * Copia archivo a \\DELTA19\sharename *
echo.
w:
cd \interfaces\fi
if "%1"=="" goto error
if "%2"=="" goto error
if not exist %1 (
  echo error: No existe el archivo %1
  goto end
)
date /t > \interfaces\fi\log\%~n1.log
time /t >> \interfaces\fi\log\%~n1.log
copy /Y %1 \\delta19.gruma.com\%2
move /Y %1 archive
time /t >> \interfaces\fi\%~n1.log
cscript.exe E:\info\bin\scripts\RespaldoSicfMovTxtSegunDiaSemana\RespaldoSicfMovTxtSegunDiaSemana.vbs
goto end
:error
echo use:  %0 filename sharename
:end
echo.

@echo off
set path=e:\info\scripts\bin;%path%
echo * Copia archivos cartera MEXICO *
echo.
w:
date /t > \interfaces\fi\bin\ccmx.log
time /t >> \interfaces\fi\bin\ccmx.log
cd \interfaces\fi
copy ccmx*.txt \\delta19.gruma.com\%1%
gawk '{print "if exist " $1 " move " $1 " archive" }' bin\ccmx.del > ccmxdel.bat 
call ccmxdel.bat 
time /t >> \interfaces\fi\bin\ccmx.log
del ccmxdel.bat
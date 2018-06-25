@echo off
echo Copia archivos al servidor Edinburg01.
echo.
w:
cd w:\interfaces\sd
date /T > archive\zcpEd01.log
time /T >> archive\zcpEd01.log
echo Inicia copia de archivos al servidor Edinburg01\aztecasd$\qm\txts
copy rm1.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy ce1.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy fp1.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy ct1.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy sf1.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy calent.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy carac.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy matgrp.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy matmas.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
copy tq30.txt \\edinburg01.aztecamilling.com\aztecasd$\qm\txts\
date /T >> archive\zcpEd01.log
time /T >> archive\zcpEd01.log
move rm1.txt archive
move ce1.txt archive
move fp1.txt archive
move ct1.txt archive
move sf1.txt archive
move calent.txt archive
move carac.txt archive
move matgrp.txt archive
move matmas.txt archive
move tq30.txt archive
echo Fin copia archivos.

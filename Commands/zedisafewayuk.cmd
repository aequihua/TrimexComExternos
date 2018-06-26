:begin
@echo off
echo Send file \\sapdataus\sapdata\safeway-uk.txt to \\Colinas03\penske
w:
cd w:\
copy safeway-uk.txt \\colinas03.missionfoods.com\penske
move safeway-uk.txt .\temp


@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir

echo.
@echo on
MASICResultsMerger\MASICResultsMerger.exe %WorkingDirPath%\*_msgfdb_syn.txt /Merge
@echo off
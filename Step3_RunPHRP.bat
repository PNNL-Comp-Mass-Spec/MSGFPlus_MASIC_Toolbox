@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir

echo.
@echo on
PHRP\PeptideHitResultsProcRunner.exe %WorkingDirPath%\*_msgfplus.tsv /N:ParamFiles\MSGFPlus\MSGFDB_PartTryp_DynMetOx_Stat_CysAlk_TMT_6Plex_20ppmParTol.txt /M:ParamFiles\MSGFPlus\MSGFDB_PartTryp_DynMetOx_Stat_CysAlk_TMT_6Plex_20ppmParTol_ModDefs.txt
@echo off

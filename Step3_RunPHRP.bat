@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir

echo.
@echo on
PHRP\PeptideHitResultsProcRunner.exe %WorkingDirPath%\62276_TMT_TD10_24_23Jun14_Pippin_14-03-01_msgfplus.tsv /N:ParamFiles\MSGFDB_PartTryp_DynMetOx_Stat_CysAlk_TMT_6Plex_20ppmParTol.txt /M:ParamFiles\MSGFDB_PartTryp_DynMetOx_Stat_CysAlk_TMT_6Plex_20ppmParTol_ModDefs.txt
@echo off

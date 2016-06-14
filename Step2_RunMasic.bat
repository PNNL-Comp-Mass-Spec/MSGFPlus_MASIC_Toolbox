@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir

echo.
@echo on
MASIC\MASIC.exe %WorkingDirPath%\*.raw /P:ParamFiles\MASIC\TMT10_LTQ-FT_10ppm_ReporterTol0.003Da_2014-08-06.xml /Q /L /O:%WorkingDirPath%
@echo off
@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir
set FastaFilePath=.\Fasta\ID_004208_295531A4.fasta

if not exist %WorkingDirPath% mkdir %WorkingDirPath%

for %%f in (%WorkingDirPath%\*.raw) do (
   call Step1_ProcessDatasetsMSGFPlus_Work.bat %WorkingDirPath% %%~nf %FastaFilePath%
)


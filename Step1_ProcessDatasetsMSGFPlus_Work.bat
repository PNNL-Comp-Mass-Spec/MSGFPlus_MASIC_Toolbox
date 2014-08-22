@echo off

rem --------------
rem MGSF+ Options
rem --------------

rem Examples: 2.5Da, 20ppm or 0.5Da,2.5Da, Default: 20ppm
set ParentIonTol=20ppm

rem 0: Low-res LCQ/LTQ (Default), 1: Orbitrap/FTICR, 2: TOF, 3: Q-Exactive
set MS2DetectorID=3

rem 0: unspecific cleavage, 1: Trypsin (Default), 2: Chymotrypsin, 3: Lys-C, 4: Lys-N, 5: glutamyl endopeptidase, 6: Arg-C, 7: Asp-N, 8: alphaLP, 9: no cleavage
set EnzymeID=1

rem Range of allowed isotope peak errors, Default:0,1
set IsotopeErrorRange=-1,2

rem Number of Tolerable Termini, Default: 2 (fully tryptic if EnzymeID=1)
set NTT=2

rem 0: don't search decoy database (Default), 1: search decoy database
set TDA=1

rem Minimum peptide length to consider, Default: 6
set MinLength=6

rem Maximum peptide length to consider, Default: 40
set MaxLength=50

rem Number of matches per spectrum to be reported, Default: 1)
set NumMatchesPerSpec=1

rem --------------
rem End Options
rem --------------

IF [%1]==[] goto NoWorkDir
IF [%2]==[] goto NoDataset
IF [%3]==[] goto NoFastaFile

Goto Process

:NoWorkDir
echo.
echo error: Missing parameters
Goto Syntax

echo.
echo Error: Dataset name not provided
Goto Syntax

:NoDataset

echo.
echo Error: Dataset name not provided
Goto Syntax

:NoFastaFile

echo.
echo Error: Fasta file path not provided
Goto Syntax

:Syntax
echo.
echo %0 WorkDirPath DatasetName FastaFilePath
Goto done

:Process

set MzXmlFilePath=%1\%2.mzXML
if exist %MzXmlFilePath% goto RunMSGFPlus

echo.
@echo on
ProteoWizard\msconvert.exe --mzXML --32 --filter "peakPicking true 1-" %1\%2.raw -o %1
@echo off

if exist %MzXmlFilePath% goto RunMSGFPlus

echo Error: MSConvert did not create the .mzXML file
goto done

:RunMSGFPlus

Set OutputFilePath=%1\%2_msgfplus.mzid
Set TsvFilePath=%1\%2_msgfplus.tsv

echo.
@echo on
"C:\Program Files\Java\jre8\bin\java.exe" -Xmx4000M -jar MSGFPlus\MSGFPlus.jar -s %MzXmlFilePath% -o %OutputFilePath% -d %3 -mod ParamFiles\MSGFPlus\MSGFDB_Mods.txt -t %ParentIonTol% -inst %MS2DetectorID% -e %EnzymeID% -ti %IsotopeErrorRange% -ntt %NTT% -tda %TDA% -minLength %MinLength% -maxLength %MaxLength% -n %NumMatchesPerSpec%
@echo off

If not exist %OutputFilePath% goto MSGFPlusError

echo.
@echo on
"C:\Program Files\Java\jre8\bin\java.exe" -Xmx2000M -cp MSGFPlus\MSGFPlus.jar edu.ucsd.msjava.ui.MzIDToTsv -i %OutputFilePath%  -o %TsvFilePath% -showQValue 1 -showDecoy 1 -unroll 1
@echo off

If not exist %TsvFilePath% goto MSGFPlusTSVError

echo.
echo MSGF+ Completed successfully, creating %TsvFilePath%
echo.

goto done

:MSGFPlusError
echo.
echo Error: MSGFPlus did not create a .mzID file
echo.
goto done

:MSGFPlusTSVError
echo.
echo Error: MSGFPlus did not create a .TSV file
echo.
goto done

:Done


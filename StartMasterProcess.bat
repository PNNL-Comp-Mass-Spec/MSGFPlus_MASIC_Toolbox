@echo off

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-3 delims=/:/ " %%a in ('time /t') do (set mytime=%%a-%%b-%%c)

set LogFolder=Logs
if not exist %LogFolder% mkdir %LogFolder%

set LogFilePath=%LogFolder%\ProcessingLog_%mydate%_%mytime%.txt
echo Log File Path: %LogFilePath%

echo Running MSConvert and MSGF+
call Step1_ProcessDatasetsMSGFPlus.bat > %LogFilePath%

echo Running MASIC
call Step2_RunMasic.bat >> %LogFilePath%

echo Running PHRP
call Step3_RunPHRP.bat >> %LogFilePath%

echo Merging MASIC and PHRP Results
call Step4_MergeMSGFPlusAndMasic.bat >> %LogFilePath%

pause

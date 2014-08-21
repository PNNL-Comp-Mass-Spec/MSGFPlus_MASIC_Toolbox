@echo off

echo Entering %0

set WorkingDirPath=.\WorkDir

rem Note: uses tail.exe from the GnuWin32 tools; see http://gnuwin32.sourceforge.net/

cd %WorkingDirPath%

echo.
del FinalCombinedResults.txt 2> NUL

for %%f in (*_msgfdb_syn_PlusSICStats.txt) do (
   if not exist FinalCombinedResults.txt (
      @echo on
      copy "%%f" FinalCombinedResults.txt
      @echo off
   ) else (
      @echo on
      ..\bin\tail.exe -n+2 %%f >> FinalCombinedResults.txt
      @echo off
   )
)

echo.
if exist FinalCombinedResults.txt (
  echo Created combined file %WorkingDirPath%\FinalCombinedResults.txt
   ) else (
  echo Error: Combined file was not created: %WorkingDirPath%\FinalCombinedResults.txt
)

cd ..

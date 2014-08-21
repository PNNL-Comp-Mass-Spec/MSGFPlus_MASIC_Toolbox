This toolbox consists of a series of Windows batch files for the automated analysis of
Thermo .Raw files using MSGF+ and MASIC.  Following the analysis, the results are merged
into a single, master result file.

Prior to using the toolbox you must download several programs and place them in the 
corresponding folders.

- MASIC
	http://omics.pnl.gov/software/MASIC

- MASICResultsMerger
	http://omics.pnl.gov/software/masic-results-merger

- PHRP
	http://omics.pnl.gov/software/peptide-hit-results-processor

- ProteoWizard
	http://proteowizard.sourceforge.net/
	- Used to convert .Raw files to mzXML files


Steps for using the toobox
1) Place the Thermo .Raw files to analyze in the WorkDir folder

2) Place the desired Fasta file in the FASTA folder

3) Edit batch file Step1_ProcessDatasetsMSGFPlus.bat to refer to the fasta file

4) Edit batch file Step1_ProcessDatasetsMSGFPlus_Work.bat to customize the 
   MSGF+ search options to use

5) Run batch file StartMasterProcess.bat

6) A timestamped log file will be created in the logs folder; examine it to monitor
   progress and check for errors

7) The results file will be named FinalCombinedResults.txt and will be in the WorkDir folder
   - You can edit Step5_Combine_MSGFPlusWithMasic_Files.bat to customize the filename

-------------------------------------------------------------------------------
Written by Matthew Monroe for the Department of Energy (PNNL, Richland, WA)
Copyright 2014, Battelle Memorial Institute.  All Rights Reserved.

E-mail: matthew.monroe@pnl.gov or matt@alchemistmatt.com
Website: http://ncrr.pnl.gov/ or http://www.sysbio.org/resources/staff/
-------------------------------------------------------------------------------

Licensed under the Apache License, Version 2.0; you may not use this file except 
in compliance with the License.  You may obtain a copy of the License at 
http://www.apache.org/licenses/LICENSE-2.0
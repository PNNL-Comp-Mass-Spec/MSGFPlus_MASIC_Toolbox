This toolbox consists of a series of Windows batch files for the automated analysis of
Thermo .Raw files using MS-GF+ and MASIC.  Following the analysis, the results are merged
into a single, master result file.

Prior to using the toolbox you must download several programs and place them in the 
corresponding folders.

- MASIC
	https://github.com/PNNL-Comp-Mass-Spec/MASIC

- MASICResultsMerger
	https://github.com/PNNL-Comp-Mass-Spec/MASIC-Results-Merger

- PHRP
	https://github.com/PNNL-Comp-Mass-Spec/PHRP

- ProteoWizard
	https://proteowizard.sourceforge.io/
	- Used to convert .Raw files to mzXML files


Steps for using the toolbox
1) Place the Thermo .Raw files to analyze in the WorkDir folder

2) Place the desired Fasta file in the FASTA folder

3) Edit batch file Step1_ProcessDatasetsMSGFPlus.bat to refer to the fasta file

4) Edit batch file Step1_ProcessDatasetsMSGFPlus_Work.bat to customize the 
   MS-GF+ search options to use

5) Run batch file StartMasterProcess.bat

6) A timestamped log file will be created in the logs folder; examine it to monitor
   progress and check for errors

7) The results file will be named FinalCombinedResults.txt and will be in the WorkDir folder
   - You can edit Step4_MergeMSGFPlusAndMasic.bat to customize the final filename

-------------------------------------------------------------------------------
Written by Matthew Monroe for the Department of Energy (PNNL, Richland, WA)
Copyright 2014, Battelle Memorial Institute.  All Rights Reserved.

E-mail: matthew.monroe@pnnl.gov or proteomics@pnnl.gov
Website: https://github.com/PNNL-Comp-Mass-Spec/ or https://panomics.pnnl.gov/ or https://www.pnnl.gov/integrative-omics
-------------------------------------------------------------------------------

Licensed under the Apache License, Version 2.0; you may not use this file except 
in compliance with the License.  You may obtain a copy of the License at 
http://www.apache.org/licenses/LICENSE-2.0

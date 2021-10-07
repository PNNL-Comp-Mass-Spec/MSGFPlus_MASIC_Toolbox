# __<span style="color:#D57500">MSGFPlus & MASIC Data Processing Toolbox</span>__
DataProcessing toolbox for running MSGF+ and MASIC, then merging the results. Uses Windows batch files to automate the process for a folder of Thermo .Raw files

### Description
This toolbox consists of a series of Windows batch files for the automated analysis of Thermo .Raw files using MSGF+ and MASIC. Following the analysis, the results are merged into a single, master result file.

Prior to using the toolbox you must download several programs and place them in the corresponding folders.

* MASIC: [https://pnnl-comp-mass-spec.github.io/MASIC/](https://pnnl-comp-mass-spec.github.io/MASIC/)
* MASICResultsMerger: [https://pnnl-comp-mass-spec.github.io/MASIC-Results-Merger/](https://pnnl-comp-mass-spec.github.io/MASIC-Results-Merger/)
* PHRP: [https://pnnl-comp-mass-spec.github.io/PHRP/](https://pnnl-comp-mass-spec.github.io/PHRP/)
* ProteoWizard: [http://proteowizard.sourceforge.net/](http://proteowizard.sourceforge.net/)
  * Used to convert .Raw files to mzXML files

### Downloads
* [Latest version](https://github.com/PNNL-Comp-Mass-Spec/MSGFPlus_MASIC_Toolbox/releases/latest)
* [Source code on GitHub](https://github.com/PNNL-Comp-Mass-Spec/MSGFPlus_MASIC_Toolbox)

#### Software Instructions
Steps for using the toobox

1. Place the Thermo .Raw files to analyze in the WorkDir folder
2. Place the desired Fasta file in the FASTA folder
3. Edit batch file Step1_ProcessDatasetsMSGFPlus.bat to refer to the fasta file
4. Edit batch file Step1_ProcessDatasetsMSGFPlus_Work.bat to customize the MSGF+ search options to use
5. Run batch file StartMasterProcess.bat
6. A timestamped log file will be created in the logs folder; examine it to monitor progress and check for errors
7. The results file will be named FinalCombinedResults.txt and will be in the WorkDir folder

Note: You can edit Step4_MergeMSGFPlusAndMasic.bat to customize the final filename

### Acknowledgment

All publications that utilize this software should provide appropriate acknowledgement to PNNL and the MSGFPlus_MASIC_Toolbox GitHub repository. However, if the software is extended or modified, then any subsequent publications should include a more extensive statement, as shown in the Readme file for the given application or on the website that more fully describes the application.

### Disclaimer

These programs are primarily designed to run on Windows machines. Please use them at your own risk. This material was prepared as an account of work sponsored by an agency of the United States Government. Neither the United States Government nor the United States Department of Energy, nor Battelle, nor any of their employees, makes any warranty, express or implied, or assumes any legal liability or responsibility for the accuracy, completeness, or usefulness or any information, apparatus, product, or process disclosed, or represents that its use would not infringe privately owned rights.

Portions of this research were supported by the NIH National Center for Research Resources (Grant RR018522), the W.R. Wiley Environmental Molecular Science Laboratory (a national scientific user facility sponsored by the U.S. Department of Energy's Office of Biological and Environmental Research and located at PNNL), and the National Institute of Allergy and Infectious Diseases (NIH/DHHS through interagency agreement Y1-AI-4894-01). PNNL is operated by Battelle Memorial Institute for the U.S. Department of Energy under contract DE-AC05-76RL0 1830.

We would like your feedback about the usefulness of the tools and information provided by the Resource. Your suggestions on how to increase their value to you will be appreciated. Please e-mail any comments to proteomics@pnl.gov

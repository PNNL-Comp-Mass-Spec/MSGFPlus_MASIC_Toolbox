== Overview ==

MS-GF+ (aka MSGF+ or MSGFPlus) performs peptide identification by scoring 
MS/MS spectra against peptides derived from a protein sequence database. 
It supports the HUPO PSI standard input file (mzML) and saves results in 
the mzIdentML format, though results can easily be transformed to TSV. 
ProteomeXchange supports Complete data submissions using MS-GF+ search results.

MS-GF+ is optimized for a variety of spectral types, i.e., combinations 
of fragmentation method, instrument, enzyme, and experimental protocols. 
It supports a variety of input file formats, including mzML, mzXML, 
Mascot Generic File (mgf), MS2 files, Micromass Peak List files (pkl), 
and Concatenated DTA files (_dta.txt).

== Requirements ==

JRE 1.6 or greater
Main memory 2GB or greater (recommended 4GB)

== Installation ==

Unzip MSGFPlus.zip
Place MSGFPlus.jar in any folder

== Usage Information ==

Type 'java -jar MSGFPlus.jar' for command line arguments

To convert an mzid output file into a tsv file, you have two options:

Option 1: MzidToTsvConverter.exe
    MzidToTsvConverter -mzid:"mzid path" [-tsv:"tsv output path"] [-unroll|-u] [-showDecoy|-sd]

Option 2: MzIDToTsv Java module
    java -Xmx3500M -cp MSGFPlus.jar edu.ucsd.msjava.ui.MzIDToTsv
    -i MzIDFile (MS-GF+ output file (*.mzid))
    [-o TSVFile] (TSV output file (*.tsv) (Default: MzIDFileName.tsv))
    [-showQValue 0/1] (0: do not show Q-values, 1: show Q-values (Default))
    [-showDecoy 0/1] (0: do not show decoy PSMs (Default), 1: show decoy PSMs)
    [-unroll 0/1] (0: merge shared peptides (Default), 1: unroll shared peptides)

The MzidToTsvConverter.exe program is faster and uses less memory.
    - Documentation at https://github.com/PNNL-Comp-Mass-Spec/Mzid-To-Tsv-Converter
    - Download from https://github.com/PNNL-Comp-Mass-Spec/Mzid-To-Tsv-Converter/releases

For detailed documentation on MS-GF+, see the "doc" subfolder, or visit:
    - GitHub repo HTML help pages: 
      https://msgfplus.github.io/msgfplus/
    - https://htmlpreview.github.io/?https://github.com/MSGFPlus/msgfplus/blob/master/docs/index.html

== Contact Information ==

PNNL Proteomics [proteomics@pnnl.gov]
Sangtae Kim [sangtae.kim (at) gmail.com]

== Publications ==

MS-GF+: Universal Database Search Tool for Mass Spectrometry, Sangtae Kim, Pavel A. Pevzner, 
Nat Commun. 2014 Oct 31;5:5277. doi: 10.1038/ncomms6277.
http://www.ncbi.nlm.nih.gov/pubmed/?term=25358478

Spectral Probabilities and Generating Functions of Tandem Mass Spectra: A Strike against Decoy Databases, Sangtae Kim, Nitin Gupta and Pavel Pevzner,
J Proteome Res. 2008 Aug;7(8):3354-63. doi: 10.1021/pr8001244.
http://www.ncbi.nlm.nih.gov/pubmed/?term=18597511

== Updates ==

https://github.com/sangtaekim/msgfplus/releases

== Source ==

https://github.com/sangtaekim/msgfplus

Customize file MSGFDB_Mods.txt using the modification details from the desired MSGF+ parameter file.
For example, given these dynamic and static mods:

StaticMod=C2H3N1O1,  C, fix, any, Carbamidomethyl           # Fixed Carbamidomethyl C (alkylation)
DynamicMod=O1,       M, opt, any, Oxidation                 # Oxidized methionine


You would put this in MSGFDB_Mods.txt:

# Static mods
C2H3N1O1,C,fix,any,Carbamidomethyl           # Fixed Carbamidomethyl C (alkylation)

# Dynamic mods
O1,M,opt,any,Oxidation                       # Oxidized methionine


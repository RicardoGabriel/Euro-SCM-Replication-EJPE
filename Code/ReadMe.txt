To produce the figures of the paper you first need to set up the path to the folder in Paths.do

Then, Master.do file has all the key definitions to run robustness checks and different exercises.

Files and use:
0_Data_Management_Annual - takes raw data, cleans, and merges information from different sources
1_SCM_Annual - runs synthetic control method, produces .dta files with information on synthetic control group, and a weights table for each country
2_ Aggregation_Annual - merges all individual country .dta files with doppelganger information
3_Descriptives_Annual - computes Tables with dscriptives statistics per countyr (not used in the paper)
4_ComparisonTables_Annual - constructs comparison tables which summarize each countries and their doppelganger for the variables of interest before the 
euro adoption.
5_Graphs_Annual - combines all the individual countries graphs into one figure.
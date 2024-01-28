# Adopting the Euro - Code

Inside this folder [Code](https://github.com/RicardoGabriel/Adopting-the-Euro-SCM/tree/main/Code) you can find all Stata 15 and MATLAB codes used to produce the figures and tables in the paper.

To run the codes, one need to set the appropriate path in the Paths.do file and run the Master.do. The Master.do has all the necessary packages to be installed and a control panel where one can change settings such as: number of lags, horizon, confidence bands, and different asymetry tests. 

It calls the following do files:

0. 0_Data_Management_Annual - takes raw data, cleans, and merges information from different sources

1. 1_SCM_Annual - runs synthetic control method, produces .dta files with information on synthetic control group, and a weights table for each country

2. 2_ Aggregation_Annual - merges all individual country .dta files with doppelganger information

3. 3_Descriptives_Annual - computes Tables with dscriptives statistics per countyr (not used in the paper)

4. 4_ComparisonTables_Annual - constructs comparison tables which summarize each countries and their doppelganger for the variables of interest before the 
euro adoption.

5. 5_Graphs_Annual - combines all the individual countries graphs into one figure.

6. 
* Master File that runs all codes
/*

Results not directly produced in Stata
- Figure 3: In-space placebo using R Code file "Placebo_Graph_Annual"
- Figure 4 and Table A.4 are ad-hoc computations using the output from the previous code

*/

global end_choice = 2007


/*
* Baseline Results
* Figure 1, Figure 7 (Weights_Decomposition.tex)
* Table 1 (Weights_Decomposition.tex), 
* Table A.2 (Comp_Annual.tex); Table A.3 (Weights_Annual.tex), 
* Table A.6 (Weights_Decomposition.tex); Table A.7 (Net_Exports__Decomposition.tex)
* 
global treatment_choice = 1999
global treatment_GRC_choice = 2001
global outcome_choice normgdp_s
global outcome_choicecg normgdp_scg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21 22

do Paths
do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual

* Table
do 3_Descriptives_Annual

* Table 
do 4_ComparisonTables_Annual

* Figures
do 5_Graphs_Annual

*/

/*
* In-time placebo test
* Figure 2 (and any other where the end of sample is 2007 and treatment date 
* is between 1972 and 2006)

* Run in time placebo
global treatment_choice = 1992
global treatment_GRC_choice = 1992
global outcome_choice normgdp_s
global outcome_choicecg normgdp_scg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21 22

do Paths
do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual
do 6_Graphs_Other
*/


/*

* Leave countries out of the donor pool placebo
global treatment_choice = 1999
global treatment_GRC_choice = 2001
global outcome_choice normgdp_s
global outcome_choicecg normgdp_scg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21 22

global donor_names Australia Canada Denmark Iceland Israel Korea NewZealand Norway Sweden Switzerland UnitedKingdom UnitedStates
global remove_1 Mexico
global remove_2 Chile
global remove_3 
global remove_nr = 2

do Paths
*do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual
do 6_Graphs_Annual

*/




/*
* Run rob check Referee 1 (normgdp_ppp_s, normgdppc_s, Bond, inflation)
global treatment_choice = 1999
global treatment_GRC_choice = 2001
global outcome_choice Bond
global outcome_choicecg Bondcg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21 22

do Paths
do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual
do 6_Graphs_Other
*/

/*
* Run rob check for only real per capita gni - does not work for Germany, Greece, Italy, and Portugal
global treatment_choice = 1999
global treatment_GRC_choice = 2001
global outcome_choice GNI
global outcome_choicecg GNIcg
global countries_choice 1 3 7 8 9 12 14 18 21 22

do Paths
do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual
do 6_Graphs_Other

* Run rob for only real gdp per capita - does not work for Spain
global outcome_choice rgdpnapc
global outcome_choicecg rgdpnapccg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21

do Paths
do 0_Data_Management_Annual
do 1_SCM_Annual
do 2_Aggregation_Annual
do 6_Graphs_Other
*/


/*

* Table annual avg GDP growth by country (3 and 10 years before and after Great Recession - 2008)
* compute standard deviation of avg growth rates for both EMU and donor countries
* document heterogeneity of 

do Paths
global end = 2018
do 0_Data_Management_Annual
* Table
preserve
use "${Data}Analysis_Annual", clear
keep if inrange(year,1999,2016)
gen gdpg = (rgdpna-L8.rgdpna)/L8.rgdpna/8*100
keep if year == 2007 | year == 2016
bys mu year: tabstat gdpg, stat(mean sd min max)
restore

*/



* Figure 8

* Referee Check - Maastricht Treaty decomposition - change global end to 1999
global treatment_choice = 1992
global treatment_GRC_choice = 1992
global outcome_choice normgdp_s
global outcome_choicecg normgdp_scg
global countries_choice 1 3 7 8 9 10 12 14 16 18 21 22
global end_choice = 1998

do Paths
do 0_Data_Management_Annual
do 8_SCM_1999
do 2_Aggregation_Annual

* Table
*do 3_Descriptives_Annual

* Table 
*do 4_ComparisonTables_Annual

* Figures
do 9_Graphs_1999

*/

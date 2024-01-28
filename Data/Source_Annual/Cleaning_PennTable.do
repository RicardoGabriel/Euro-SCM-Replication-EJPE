* DATA CLEANING - PENN TABLES *

*import excel "C:\Users\ricar\Dropbox\SCM_Projects\Database\Source_Annual\PennTable\PennTable.xlsx", sheet("Data") firstrow
import excel "PennTable\PennTable.xlsx", sheet("Data") firstrow

rename countrycode c
*keep if c=="AUS" | c=="AUT" | c=="BEL" | c=="CAN" | c=="CZE" | c=="CHL" | c=="DNK" | c=="EST" | c=="FIN" | c=="FRA" | c=="DEU" | c=="GRC" | c=="HUN" | c=="ISL" | c=="IRL" | c=="ITA" | c=="ISR" | c=="JPN" | c=="KOR" | c=="LVA" | c=="LTU" | c=="LUX" | c=="MEX" | c=="NLD" | c=="NZL" | c=="NOR" | c=="POL" | c=="PRT" | c=="SVK" | c=="SVN" | c=="SWE" | c=="ESP" | c=="CHE" | c=="TUR" | c=="GBR" | c=="USA" | c=="ARG" | c=="BRA" | c=="BGR" | c=="CPV" | c=="COL" | c=="CRI" | c=="HRV" | c=="CYP" | c=="IND" | c=="IDN" | c=="MLT" | c=="MKD" | c=="PER" | c=="ROU" | c=="RUS" | c=="ZAF"
keep if c=="AUS" | c=="AUT" | c=="BEL" | c=="CAN" | c=="CHL" | c=="DNK" | c=="FIN" | c=="FRA" | c=="DEU" | c=="GRC" | c=="ISL" | c=="IRL" | c=="ITA" | c=="ISR" | c=="JPN" | c=="KOR" | c=="LUX" | c=="MEX" | c=="NLD" | c=="NZL" | c=="NOR" | c=="PRT" | c=="SWE" | c=="ESP" | c=="CHE" | c=="GBR" | c=="USA" 
keep c country currency_unit year rgdpe rgdpo pop emp avh ccon cda cgdpe cn ck ctfp rgdpna rconna rdana rnna rkna rtfpna csh_c csh_i csh_g csh_x csh_m

keep if year>1969

*save "C:\Users\ricar\Dropbox\SCM_Projects\Database\Source_Annual\PennTable\Clean_PennTable.dta", replace
*export excel using "C:\Users\ricar\Dropbox\SCM_Projects\Database\Source_Annual\PennTable\Clean_PennTable.xls", firstrow(variables) replace
save "Clean_PennTable.dta", replace
export excel using "PennTable\Clean_PennTable.xls", firstrow(variables) replace

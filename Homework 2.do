********************************************;
*Homework 2
*ICPSR - MLE | William Isaac | July 8, 2013
********************************************;

* Global Settings
#delimit ;
set more off;

*Importing Data from file;
clear;
cd "C:\Users\Acer\Dropbox\School\Summer 2013\ICPSR\MLE\Exercise 2 (7-3-12)";
use "Data for Exercise 1 (2008 ANES)";

********************************************;
* Generating Dummy Variables;
********************************************;
label list V085044a;
gen votechoice = 0;
replace votechoice = 1 if V085044a == 1;
replace votechoice = . if ( V085044a == .| V085044a == 7| V085044a == -1|V085044a == -2| V085044a == -8| V085044a == -9);

label list  V083097_;
gen dem = 0;
replace dem = 1 if V083097 == 1;
replace dem = . if ( V083097 == .| V083097 == 4| V083097 == 5| V083097 == -8| V083097 == -9);

label list  V083097_;
gen rep = 0;
replace rep = 1 if V083097 == 2;
replace rep = . if ( V083097 == .| V083097 == 4| V083097 == 5| V083097 == -8| V083097 == -9);

label list V081101_;
gen gender = 0;
replace gender = 1 if V081101 == 2;
replace gender = . if ( V081101 == .);

label list  V083057_;
gen perfin = 0;
replace perfin = 1 if V083057 == 3;
replace perfin = 2 if V083057 == 5;
replace perfin = 3 if V083057 == 1;
replace perfin = . if ( V083057 == .| V083057 == -8| V083057 == -9);

label list  V083083_;
gen outlook = 0;
replace outlook = 1 if V083083 == 5;
replace outlook = 2 if V083083 == 3;
replace outlook = 3 if V083083 == 1;
replace outlook = . if ( V083083 == .| V083083 == -8| V083083 == -9);


gen income = V083248;
replace income = . if ( V083248 == .| V083248 == -8| V083248 == -9 | V083248 == -1);

********************************************;
* Model Estimation;
********************************************;

* Question 3;

/* National Economic Outlook */
ologit outlook dem rep gender income;
regress outlook dem rep gender income;


/* Personal Finance */
ologit perfin dem rep gender income;
regress perfin dem rep gender income;


/* Produce Tables */

eststo clear;
eststo: ologit outlook dem rep gender income;
eststo: ologit perfin dem rep gender income;
esttab, se pr2 title("Table 1. Ordered Logit Model");


eststo clear;
eststo: regress outlook dem rep gender income;
eststo: regress perfin dem rep gender income;
esttab, se r2 title("Table 2. Linear Regression Model");

* Question 5;

/* Personal Finance */
ologit perfin dem rep gender income;
estimates store PF;
test (_b[/cut1] = _b[/cut2]);


/* National Economic Outlook */
ologit outlook dem rep gender income;
estimates store PF1;
test (_b[/cut1] = _b[/cut2]);



*Questions 6;

/* National Economic Outlook */
estsimp ologit outlook dem rep gender income;
setx dem 0;
setx rep 0;
setx gender  1;
setx income  15;
simqi;

drop b1;
drop b2;
drop b3; 
drop b4;
drop b5; 
drop b6;


/* Personal Finance */
estsimp ologit perfin dem rep gender income;
setx dem 0;
setx rep 0;
setx gender  1;
setx income  15;
simqi;

********************************************;
* Export to R;
********************************************;

save "Data for Exercise 2 (2008 ANES)", replace;

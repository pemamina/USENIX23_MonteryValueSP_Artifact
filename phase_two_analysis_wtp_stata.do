* We create a label to show the order of independent variables.
label define comparisonOrder 1 "Z vs Y" 2 "X vs Y" 3 "X vs Z"

* We recode the independent variables with the new baseline
encode label_type_comparison, gen(typeComparisonCat) label(comparisonOrder)

* We construct the mixed interval regression and set participant as the random effect.
meintreg minimum_willingness_to_pay maximum_willingness_to_pay i.typeComparisonCat || participant:

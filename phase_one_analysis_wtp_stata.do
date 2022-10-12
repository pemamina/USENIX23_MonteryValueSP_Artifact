* We create a label to show the order of independent variables.
. label define factor_lab 1 "main_personal"
. label define device_lab 1 "smoke" 2 "speaker"

* We recode the independent variables with the new baseline
. encode mostprotective_leastprotective_p, generate(attribute_value) label(factor_lab)
. encode smart_device, generate(device_value) label(device_lab)

* We construct the mixed interval regression and set participant as the random effect.
. meintreg minimum_willingness_to_pay maximum_willingness_to_pay i.order_scenario i.correct_definition_number i.device_value i.attribute_value || participant

## Loading the required library for regression analysis
library(ordinal)

## Loading the survey data
dataset <- read.csv("phase_one_suvey_data.csv") 

## Specifying the dependent variables as ordinal categorical
dataset$risk_perception_coded <- factor(dataset$risk_perception_coded, order = TRUE,
                                        levels = c("1", "2", "3",
                                                   "4", "5"))
dataset$willingness_to_purchase_coded <- factor(dataset$willingness_to_purchase_coded, order = TRUE,
                                                levels = c("1", "2", "3",
                                                           "4", "5"))

## Specifying the independent variables as categorical
dataset$order_scenario <- factor(dataset$order_scenario)
dataset$correct_definition_number <- factor(dataset$correct_definition_number)

## Setting the baseline for model independent variables
dataset$mostProtective_leastProtective_pair <- as.factor(dataset$mostProtective_leastProtective_pair)
dataset$smart_device <- as.factor(data$smart_device)

dataset$mostProtective_leastProtective_pair <- relevel(dataset$mostProtective_leastProtective_pair, "main_personal")
dataset$smart_device <- relevel(dataset$smart_device, "smoke")

## Constructing the Risk Perception Model
risk_clmm <- clmm(risk_perception_coded ~ mostProtective_leastProtective_pair + smart_device +
                    correct_definition_number + order_scenario +
                    (1|participant), data = dataset, link = "logit"
)
summary(risk_clmm)

## Constructing the Willingness to Purchase Model
purchase_clmm <- clmm(dataset$willingness_to_purchase_coded ~ mostProtective_leastProtective_pair + smart_device +
                        correct_definition_number + order_scenario +
                        (1|participant), data = dataset, link = "logit"
)
summary(purchase_clmm)
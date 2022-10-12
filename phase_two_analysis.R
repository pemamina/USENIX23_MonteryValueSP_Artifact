## Loading the required library for regression analysis
library(ordinal)

## Loading the survey data
dataset <- read.csv("phase_two_survey_data.csv") 

## Specifying the dependent variables as ordinal categorical
dataset$risk_perception_coded <- factor(dataset$risk_perception_coded, order = TRUE,
                                        levels = c("1", "2", "3",
                                                   "4", "5"))
dataset$willingness_to_purchase_coded <- factor(dataset$willingness_to_purchase_coded, order = TRUE,
                                                levels = c("1", "2", "3",
                                                           "4", "5"))

## Setting the baseline for model independent variables
dataset$label_type_comparison <- as.factor(dataset$label_type_comparison)
dataset$label_type_comparison <- relevel(dataset$label_type_comparison, "Z vs Y")

## Constructing the Risk Perception Model
risk_clmm <- clmm(risk_perception_coded ~ label_type_comparison +
                    (1|participant), data = dataset, link = "logit"
)
summary(risk_clmm)


## Constructing the Willingness to Purchase Model
purchase_clmm <- clmm(dataset$willingness_to_purchase_coded ~ label_type_comparison +
                        (1|participant), data = dataset, link = "logit"
)
summary(purchase_clmm)
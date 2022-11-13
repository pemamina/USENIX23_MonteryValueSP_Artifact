# Artifact ReadMe for "Are Consumers Willing to Pay for Security and Privacy of IoT Devices?" (USENIX'23)

## Table of Contents
1. [Study Overview](#overview)
2. [Content](#content)
3. [Analysis Software Requirements](#requirements)
4. [Setup](#setup)
5. [Participants' Survey Data](#datasets)
6. [Evaluation](#evaluation)

## Study Overview <a id="overview"></a>
In this study, we explored the monetary value of security and privacy for consumers of smart devices. By conducting a two-phase online study on Prolific, we quantified the impact of several security and privacy improvements (e.g., automatic security update vs. no security update) on Internet of Things (IoT) consumers' purchase behavior. Through designing an incentive-compatible experiment using the multiple price list (MPL) methodology, we captured participants' willingness to pay for transparency over security and privacy enhancements of smart devices. We constructed three regression models for each phase of our online study to quantify and explain participants' risk perception, willingness to purchase, and willingness to pay. This artifact contains the data files, the analysis files, and the output files to reproduce and validate the output of the statistical models. 

## Content <a id="content"></a>
 - Participants' De-identified survey data: `phase_one_survey_data.csv`, `phase_two_survey_data.csv`
 - R code to construct CLMM models in two study phases: `phase_one_analysis.R`, `phase_two_analysis.R`
 - STATA code to construct mixed interval regression models in two study phases: `phase_one_analysis_wtp_stata.do`, `phase_two_analysis_wtp_stata.do`
 - The output of the CLMM models in two study phases: `phase_one_CLMM_output.txt`, `phase_two_CLMM_output.txt`
 - The output of the mixed-effects interval regression models in two study phases: `phase_one_STATA_output.txt`, `phase_two_STATA_output.txt`

## Analysis Software Requirements <a id="requirements"></a>
-   [RStudio](https://www.rstudio.com/products/rstudio/download/)
-   [R](https://cran.rstudio.com/)
-   [STATA](https://www.stata.com/)

## Setup <a id="setup"></a>

After installing RStudio and R, we need to install (`install.packages("ordinal")`) and load (`library(ordinal)`) the  `ordinal`  library required to construct CLMM models. This process is shown in lines 2 and 3 of `phase_one_analysis.R`, `phase_two_analysis.R`. No package needs to be installed in STATA to conduct mixed-effects interval regression.

## Participants' Survey Data <a id="datasets"></a>

We provide participants' de-identified survey data to construct the regression models. There are two datasets for the two phases of the study: `phase_one_survey_data.csv` and `phase_two_survey_data.csv`. In the table below, we provide an explanation of how to navigate the information in these datasets. 

|Column Name|Study Phase|Description (e.g., Example Level)| Presented in Final Model (Risk Perception/Willingness to Purchase/Willingness to Pay)|
|--|--|--|--|
|  participant| 1, 2 | Participant ID (e.g., 23) | :heavy_check_mark: (Risk Perception, Willingness to Purchase, Willingness to Pay)|
| willingness_to_purchase | 1, 2 | Impact of presented comparison pair on willingness to purchase (e.g., slightly increases) | |
|  willingness_to_purchase_coded|  1, 2| Impact of presented comparison pair on willingness to purchase coded as an ordinal categorical factor from 1: strongly decreases to 5: strongly increases (e.g., 4) | :heavy_check_mark: (Willingness to Purchase)|
| risk_perception | 1, 2 | Impact of presented comparison pair on risk perception (e.g., slightly increases) | |
|  risk_perception_coded|  1, 2| Impact of presented comparison pair on risk perception coded as an ordinal categorical factor from 1: strongly decreases to 5: strongly increases (e.g., 4) | :heavy_check_mark: (Risk Perception)|
|  minimum_willingness_to_pay|  1, 2|  Minimum specified dollar amount to pay (e.g., 10)|  :heavy_check_mark: (Risk Perception, Willingness to Purchase, Willingness to Pay)|
|  maximum_willingness_to_pay|  1, 2|  Maximum specified dollar amount to pay (e.g., 25)|  :heavy_check_mark: (Risk Perception, Willingness to Purchase, Willingness to Pay)|
|  Age| 1, 2 | Participant's age (e.g., 36)| | 
|  Gender| 1, 2 |  Participant's gender (e.g., woman)| |
|  Income| 1, 2 | Participant's household income (previous year (e.g., $50,000 to $59,999) | |
|  Education| 1, 2   | Participant's highest level of education (e.g., Bachelor's degree in college (4-year)) | |
|Background in Technology| 1, 2| Whether the participant has any background in technology (e.g., Yes)| | 
| smart_device | 1 | Type of smart device to purchase (e.g., speaker)| :heavy_check_mark: (Risk Perception, Willingness to Purchase)|
|  security_privacy_attribute|  1|  Presented security/privacy attribute (e.g., security update) | |
|  most_protective_value|  1|  Most protective value of the presented comparison pair (update_manual)| |
|  least_protective_value|  1|  Least protective value of the presented comparison pair (update_none)| |
|  mostProtective_leastProtective_pair| 1 | Presented comparison pair (e.g., manual_none)|:heavy_check_mark: (Risk Perception, Willingness to Purchase)|
| order_scenario | 1 | Presented order of scenario in the survey (e.g., 2)| :heavy_check_mark: (Risk Perception, Willingness to Purchase)|
|  correct_definition_number|  1| Number of correct definitions for values in each comparison pair (e.g., 2)| :heavy_check_mark: (Risk Perception, Willingness to Purchase)| 
|label_type_comparison|2|Presented label comparison pair (e.g., X vs Y)| :heavy_check_mark: (Willingness to Pay)|

## Evaluation <a id="evaluation"></a>

In the phase-one study, to construct the two cumulative link mixed models (CLMM) for risk perceptions and willingness to purchase, we should use the R code in  `phase_one_analysis.R`. In the second phase, the CLMMs can be constructed by using the code in  `phase_two_analysis.R`. The output of the CLMM regression analysis is provided in `phase_one_CLMM_output.txt` and `phase_two_CLMM_output.txt`.

In the phase-one study, the mixed-effects interval regression can be constructed by using the code in  `phase_one_analysis_wtp_stata.do`. The mixed-effects interval regression can be constructed by using the Stata code in  `phase_two_analysis_wtp_stata.do`. The output of the mixed-effects interval regression analysis is provided in `phase_one_STATA_output.txt` and `phase_two_STATA_output.txt`.

# Artifact ReadMe for "Are Consumers Willing to Pay for Security and Privacy of IoT Devices?" (USENIX'23)

By conducting a two-phase online study on Prolific, we quantified the impact of various security and privacy improvements on Internet of Things (IoT) consumers' purchase behavior. Through designing an incentive-compatible experiment using the multiple price list (MPL) methodology, we captured participants' willingness to pay for transparency over security and privacy enhancements of smart devices. We constructed three regression models for each phase of our online study to quantify and explain participants' risk perception, willingness to purchase, and willingness to pay. This artifact provides participants' de-identified survey data that we used to construct these models and the analysis code in R and Stata that we used to build the regression models.

## Contents
- ``phase_one_survey_data.csv``, ``phase_two_survey_data.csv``: Raw, de-identified survey data
- ``phase_one_analysis.R``, ``phase_two_analysis.R``: R analysis files
- ``phase_one_analysis_wtp_stata.do``, ``phase_two_analysis_wtp_stata.do``: Stata analysis files

## Software Requirements
- [RStudio](https://www.rstudio.com/products/rstudio/download/)
- [R (version 4.2.1)](https://cran.r-project.org/bin/macosx/)
- [Stata/SE (Standard Edition)](https://www.stata.com/products/mac/)

### Setup
After installing RStudio and R, we need to load the ``ordinal`` library required to conduct mixed-effects ordinal regression. No package needs to be installed in Stata to conduct multilevel mixed-effects interval regression.

### Survey Datasets
We provide participants' anonymized data to construct the regression models. There are two main datasets for the two phases of the study. For phase one, we should look at ``phase_one_survey_data.csv``. This file includes several factors, including participant ID (participant), type of smart device (smart_device), level of interest in the smart devices (smart_speaker_interest, smart_motion_detector_interest, smart_smoke_detector_interest), type of security/privacy attribute (security_privacy_attribute), the most protective value of security/privacy attribute (most_protective_value), the least protective value of security/privacy attribute (least_protective_value), the security/privacy comparison pair (mostProtective_leastProtective_pair), the impact of comparison pair on risk perception (risk_perception, risk_perception_coded), the impact of comparison pair on willingness to purchase (willingness_to_purchase, willingness_to_purchase_coded), minimum and maximum willingness to pay (minimum_willingness_to_pay, maximum_willingness_to_pay), the order of the scenario (order_scenario), number of correct definitions for security and privacy attribute-values (correct_definition_number), and demographic information. 

The dataset for the second phase of the study is located in phase_two_survey_data.csv. Here the most important columns are participant identifier (participant), comparison label (label_type_comparison), the minimum and maximum of willingness to pay (min, max), the impact of label comparison pair on risk perception (risk_perception_coded), and the impact of label comparison pair on willingness to purchase (willingness_to_purchase_coded).


### Evaluation
In the phase-one study, to construct the two cumulative link mixed models (CLMM) for risk perceptions and willingness to purchase, we should use the R code in ``phase_one_analysis.R``. In the second phase, the CLMMs can be constructed by using the code in ``phase_two_analysis.R``'. 

In phase-one study, the mixed interval regression can be constructed by using the code in ``phase_one_analysis_wtp_stata.do``. The mixed interval regression can be constructed by using the Stata code in ``phase_two_analysis_wtp_stata``.

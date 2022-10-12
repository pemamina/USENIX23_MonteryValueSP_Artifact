# Artifact ReadMe for "Are Consumers Willing to Pay for Security and Privacy of IoT Devices?" (USENIX'23)

By conducting a two-phase online study on Prolific, we quantified the impact of various security and privacy improvements on Internet of Things (IoT) consumers' purchase behavior. Through designing an incentive-compatible experiment using the multiple price list (MPL) methodology, we captured participants' willingness to pay for transparency over security and privacy enhancements of smart devices. We constructed three regression models for each phase of our online study to quantify and explain participants' risk perception, willingness to purchase, and willingness to pay. This artifact provides participants' de-identified survey data that we used to construct these models and the analysis code in R and Stata that we used to build the regression models.

## Contents
- ``phase_one_survey_data.csv``, ``phase_two_survey_data.csv``: Raw, de-identified survey data
- ``phase_one_analysis.R``, ``phase_two_analysis.R``: R analysis files
- ``WTP.stata``: Stata analysis file

## Software Requirements
- [RStudio](https://www.rstudio.com/products/rstudio/download/)
- [R (version 4.2.1)](https://cran.r-project.org/bin/macosx/)
- [Stata/SE (Standard Edition)](https://www.stata.com/products/mac/)

### Setup
After installing RStudio and R, we need to load the ``ordinal`` library required to conduct mixed effects ordinal regression. No package needs to be installed in Stata to conduct multilevel mixed-effects interval regression.

## Evaluation

Run the following command in R to fit the risk perception and willingness to purchase models:

```
xxx
```



Run the following command in Stata to fit the willingness to pay model:

```
xxx
```


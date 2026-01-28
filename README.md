# Decision-Modeling-ABCD-GainLoss

---

# ABCD Gain/Loss: Computational Model Fit Analysis

This repository contains R code for analyzing and summarizing the fit of various computational models applied to decision-making data from the ABCD Gain/Loss Experiment. The analysis focuses on evaluating model performance using Bayesian Information Criterion (BIC) across different experimental conditions.

## Project Overview

The primary goal of this script is to process model-fitting outputs to determine which computational architectures (e.g., PVL-Decay, IE-Delta) best explain participant behavior during a gain/loss learning task. The analysis includes:

* Condition-specific summarization: Aggregating BIC values for models like `PVLDecay`, `IEDecay`, and `PVPEDecay` categorized by experimental conditions.
* Global Model Evaluation: Calculating mean BIC scores for baseline and specialized models (e.g., `decayWin`, `decayLoss`, `decayChoice`) to identify the most parsimonious fit.
* Data Transformation: Reshaping and transposing summary statistics for clear reporting and visualization.

## Technical Stack

* Language: R
* Library: `tidyverse` (primarily `dplyr` for data manipulation)
* Metrics: BIC (Bayesian Information Criterion)

## File Structure

* `AnalysisOfModelFits_ABCDGainLoss.R`: The main analysis script.
* `AllFitsContextEffectsLongTraining.csv`: The raw model-fitting data (includes BIC values for each participant and model).

## How to Run

1. Ensure you have R and the `tidyverse` package installed.
2. Place the dataset (`AllFitsContextEffectsLongTraining.csv`) in the same directory as the script.
3. Run the script.
   
## Key Models Analyzed

* PVL-Decay: Prospect Valence Learning model with decay reinforcement.
* IE (Inference Engine): Global and Local variants of the Inference Engine model.
* PVPE: Prediction Error based models categorized by local and global contexts.



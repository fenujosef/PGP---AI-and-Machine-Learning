# Project 1: Patient Condition Prediction using Biomechanics Data
Domain: Medical

### Description:
This project focuses on leveraging biomechanics data of patients to predict their medical condition using supervised machine learning algorithms. The dataset contains six biomechanical features per patient, derived from the shape and orientation of affected body parts. Since confidentiality is crucial, the client masked sensitive details while providing anonymized datasets.

### The workflow involves:

Data Understanding & Preparation: Reading multiple datasets, unifying feature names, handling inconsistencies, combining them into a single DataFrame, and analyzing missing values.

Exploratory Data Analysis (EDA): Statistical summary, correlation heatmaps, pairplots, jointplots, and boxplots to understand feature relationships and class distributions.

Model Building: Training a baseline K-Nearest Neighbors (KNN) classifier, evaluating model performance using metrics like accuracy, precision, recall, and F1-score.

Performance Improvement: Experimenting with parameter tuning and hyperparameter optimization to achieve significant improvements in prediction performance.

Objective: To demonstrate the ability to fetch, process, and analyze patient biomechanics data and build a predictive supervised learning model that can identify patient conditions accurately.

# Project 2: Customer Conversion Prediction for Loan Marketing Campaigns
Domain: Banking & Marketing

### Description:
This project is aimed at helping a bank improve the effectiveness of its marketing campaigns to increase loan conversions. Using historical customer data, the task is to build a machine learning model that can predict potential customers likely to take a loan.

### The workflow involves:

Data Understanding & Preparation: Reading multiple datasets, merging on unique customer IDs, correcting datatypes of categorical features, and cleaning unexpected values.

Exploration & Analysis: Distribution analysis of the target variable (LoanOnCard), handling missing values, and understanding customer behavior patterns.

Model Building: Training a Logistic Regression baseline model and evaluating performance through standard classification metrics.

Balancing Data: Handling imbalanced classes using resampling techniques (e.g., SMOTE/undersampling) to improve prediction fairness.

Performance Improvement: Training additional models like SVM and KNN, tuning hyperparameters, and selecting the final optimized model.

Objective: To enable focused marketing by accurately predicting customers with higher conversion potential, thereby increasing the bank’s borrower base and improving campaign ROI without additional budget.

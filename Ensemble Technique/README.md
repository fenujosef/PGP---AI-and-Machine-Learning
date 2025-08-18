# Telecom Customer Churn Prediction
Domain: Telecom | Goal: Identify customers with high churn risk to drive focused retention strategies.

### Project Summary:
Built an end-to-end ML pipeline using historical customer, service usage, account, and demographic data to predict churn. The solution covers data ingestion from two CSV sources, schema verification, cleaning (missing/unexpected values), type casting (continuous → float), categorical encoding, and feature scaling. Exploratory analysis includes automated pie-charts for categorical distributions and insights on churn segments.

### Methodology & Tasks Covered:

Data Understanding & Merge: Loaded two datasets, merged on customerID, verified column completeness.

Cleaning & EDA: Imputed anomalies; enforced float types for MonthlyCharges, TotalCharges; generated categorical distribution pie-charts with percentage labels; encoded categoricals; standardized features.

Modeling:

Trained baseline Decision Tree, Random Forest, AdaBoost, Gradient Boosting models.

Applied GridSearch to tune each model; compared train/test results, documented improvements per model.

Evaluation: Used accuracy, precision, recall, F1-score, ROC-AUC, and confusion matrices to assess generalization and overfitting.

Comparison & Reasoning: Summarized which model performed best on test data and explained why (e.g., bias-variance trade-off, handling of nonlinear interactions, robustness to mixed feature types).

### Business Impact:

Surfaces top churn drivers (e.g., contract type, tenure, monthly charges, add-on support services) to inform offers and service interventions.

Produces a ranked list of at-risk customers for targeted outreach within existing campaign budgets.

### Deliverables:

Clean, merged dataset; reproducible notebook/scripts; automated EDA visuals; model comparison report with tuned hyperparameters and metrics; actionable churn insights for marketing/retention teams.

### Tech Stack:
Python, pandas, numpy, scikit-learn, matplotlib.

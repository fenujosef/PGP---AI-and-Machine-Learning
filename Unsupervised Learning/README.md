# Project 1: Car Segmentation using K-Means Clustering
Domain: Automobile

### Description:
This project applies K-Means clustering on automobile attributes to segment cars into meaningful categories. The dataset combines car names with technical attributes like cylinders, displacement, horsepower, acceleration, weight, and mpg. The aim is to explore hidden groupings of cars based on performance and design characteristics.

### Approach:

Data Understanding & Preparation: Imported and merged CSV and JSON files, checked for missing/duplicate values, imputed where necessary, and identified anomalies (e.g., ? in horsepower).

Exploratory Analysis: Generated pairplots and scatterplots (e.g., weight vs displacement, weight vs mpg) with color-coded cylinders, yielding insights into efficiency and performance trade-offs.

Clustering: Applied K-Means for cluster counts (k=2 to k=10), used elbow method to identify the optimal cluster size, and retrained with that value. Added cluster labels to the dataset and visualized car clusters.

Deployment Step: Predicted the cluster for a new data point to demonstrate practical application.

### Outcome: 
Segmented cars into distinct performance and efficiency groups, enabling better understanding of market categories (e.g., economy cars vs heavy-duty vehicles).

# Project 2: Vehicle Classification using PCA & SVM
Domain: Automobile

### Description:
This project focuses on classifying vehicle silhouettes (bus, van, Saab 9000, Opel Manta 400) using dimensionality reduction (PCA) and Support Vector Machines (SVM). The challenge lies in distinguishing between similar car models while ensuring high accuracy with reduced feature space.

### Approach:

Data Understanding & Cleaning: Loaded dataset, handled missing values, checked class distribution with pie-charts, and removed duplicates.

Data Preparation: Split into features (X) and labels (Y), standardized all numeric values.

Model Building: Trained a baseline SVM classifier on original features. Then, applied PCA with 10 components and visualized cumulative explained variance. Selected the minimum number of components covering ≥90% variance and retrained the model.

Performance Improvement: Tuned SVM parameters (kernel, C, gamma) to improve classification accuracy.

Theoretical Insights: Documented PCA prerequisites, advantages (dimensionality reduction, reduced noise, computational efficiency) and limitations (loss of interpretability, sensitivity to scaling).

### Outcome:

Reduced feature space while maintaining high variance coverage.

Improved classification accuracy with PCA-transformed features and optimized SVM.

Demonstrated that PCA helps simplify complex feature sets while retaining predictive performance.

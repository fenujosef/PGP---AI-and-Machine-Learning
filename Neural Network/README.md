# Signal Quality Prediction & Digit Recognition
This project was carried out in two parts, focusing on applying neural network techniques to distinct real-world problems.

## Part A: Signal Quality Prediction
A communications equipment manufacturing company required a machine learning model to predict the quality of signals emitted by its devices based on measurable parameters.

### Objective: 
Build a classifier that determines the signal strength or quality using provided signal parameters.

### Data: 
The dataset consisted of multiple signal test parameters along with their associated quality labels.

### Approach:

Preprocessed the data by handling missing values and normalizing input parameters.

Implemented a neural network classifier to learn the mapping between parameters and signal quality.

Evaluated the model’s performance using metrics such as accuracy, precision, and recall.

### Outcome: 
The model successfully learned the relationship between test parameters and signal quality, enabling accurate prediction of equipment performance.

## Part B: Street View House Numbers (SVHN) Digit Recognition
Recognizing house numbers from images is crucial for modern-day mapping systems like Google Maps. The SVHN dataset, obtained from Google Street View images, was used to train a digit classifier.

### Objective: 
Develop a neural network that can recognize digits in natural scene images, a problem more complex than MNIST due to distractors, varied fonts, colors, and environmental factors.

### Data: 
Images centered around single digits (in .h5 format) with labels corresponding to the digit present.

### Challenges:

Variability in text appearance (styles, fonts, orientations).

Environmental noise (lighting, shadows, occlusions).

Image acquisition artifacts (blur, resolution).

### Approach:

Preprocessed the dataset to normalize image dimensions and labels.

Built and trained a Convolutional Neural Network (CNN) to capture spatial features for digit recognition.

Used techniques like data augmentation and dropout to improve generalization.

### Outcome: 
The CNN achieved high accuracy in classifying digits from natural images, demonstrating robustness to real-world noise and distractors.

### Overall Project Impact
Part A demonstrated the application of neural networks in predictive maintenance and signal analysis for communication equipment.

Part B addressed a computer vision problem in the OCR domain, showcasing how CNNs can be applied to real-world image datasets like SVHN.

This project highlighted the versatility of neural networks across both structured tabular data and unstructured image data, strengthening skills in preprocessing, model building, and evaluation.


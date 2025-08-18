# Face Detection and Recognition for Movie Streaming Application
This project was designed for Company X, which owns a large-scale movie streaming platform. The goal was to automate the process of identifying and displaying cast and crew details in movie scenes so that when users pause a movie and request cast information, the system can instantly provide actor details.

## Part A: Face Detection System
### Objective: 
Detect and localize faces from movie scene screenshots.

### Data: 
Annotated dataset with labels, bounding box coordinates (points), and image dimensions (imageWidth, imageHeight).

### Approach:

Implemented computer vision techniques for face detection.

Used bounding box annotations to train models for accurate face localization.

Optimized detection to handle multiple faces in a single frame.

### Outcome: 
Developed a robust detection system capable of identifying faces in diverse movie scenes.

## Part B: Image Dataset Creation
### Objective: 
Build a structured image dataset to train the company’s AI team for classification tasks.

### Data: 
Images containing single or multiple faces extracted from movie frames.

### Approach:

Collected and curated face images across different movies and lighting conditions.

Applied preprocessing steps like cropping, resizing, and normalization.

Created a clean, labeled dataset suitable for training classifiers and deep learning models.

### Outcome: 
Delivered a high-quality dataset that serves as the foundation for building advanced actor identification models.

## Part C: Face Recognition System
### Objective:
Recognize and identify actors from images to link them with cast/crew information.

### Data: 
10,770 face images of 100 individuals collected from Pinterest.

### Approach:

Implemented a face recognition pipeline using deep learning (CNN-based feature extraction + classification).

Trained models on the Pinterest dataset for actor identification.

Applied similarity measures (e.g., cosine similarity/embedding comparison) for recognition accuracy.

### Outcome: 
Built a scalable face recognition model capable of distinguishing between actors and associating them with the corresponding profiles in the app.

### Overall Project Impact
Automated the process of cast identification in movies, enhancing user experience for millions of subscribers.

Demonstrated the application of computer vision and deep learning across face detection, dataset preparation, and recognition tasks.

Delivered a system that bridges AI models with multimedia applications, enabling seamless integration into real-world streaming platforms.

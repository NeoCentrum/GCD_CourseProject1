---
title: "README"
author: "NeoCentrum"
date: "Saturday, February 21, 2015"
output: html_document
---

This is an R Markdown document for Analyzing Samsung Dataset which includes. 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```

run_analysis.R : This script provides and end-to-end Analysis of the Project Dataset.
===========================================================================================
Function : analyzeData() encapsulates the whole logic that is used to conduct the analysis.

Step1 : We start by extracting relevant Dataset
      - Get All Activity Labels, these identify the Activities coded in the Dataset.
      - Get All Features from the Features Dataset.
Step2 : Training Set Data extraction
      - Extract Training set Dataset from the "train/train_X.txt"" file.
      - Extract Train Subject Data
      - Extract Train Subjects Activities Data
      - Extract Train X Data
Step3 : Process Training set to Gel it all to create a single Training Dataset.
      - Merge Train set and its subjects and Activities data
Step4 : Testing Set Data extraction
      - Extract Test set Dataset from the "train/train_X.txt"" file.
      - Extract Test Subject Data
      - Extract Test Subjects Activities Data
      - Extract Test X Data
Step5 : Process Test set to Gel it all to create a single Test Dataset.
      - Merge Test set and its subjects and Activities data
Step6 : Process Training Set and Test Set and realted Dataset for Subjects and Activities to create a single Dataset
      - Merge Test set and its subjects and Activities data
      - Merge Subject Train set and Subject Test Sets
Step7 : We go ahead and extract Mean and Standard Deviation Measurements separately   
      - Get Dataframe with Selective Mean and Std measurements variables
Step8 : Add Descriptive Labels for the Activity Labels extracted from the Activity Labels File.      
      - Add descriptive Activity Labels
Step9 : Add descriptive Labels to other Variables.
      - Set descriptive Variable labels for 
      - Melt Dataset to shape it as per questions 
Step10 : Find Mean of each id(Subject,Activity)  
      - Set descriptive Variable labels please refer codebook for details
Step11 : Final Processed Dataset
Step12 : write data to a File called : SubjectActivitiesAverageMeasurementsDatset.txt
Step13 : Re-Verify processed data from File 
Step14 : return Verify Final Dataset
 

```
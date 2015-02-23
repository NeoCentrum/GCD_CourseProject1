---
title: "CodeBook"
author: "NeoCentrum"
date: "Saturday, February 21, 2015"
output: html_document
---
New Feature Variables
-----------------------

```

 [1] "Subject"                                                       "Activity"                                                     
 [3] "Average.of.Time.Mean.Body.Acceleration.X"                      "Average.of.Time.Mean.Body.Acceleration.Y"                     
 [5] "Average.of.Time.Mean.Body.Acceleration.Z"                      "Average.of.Time.Std.Dev.Body.Acceleration.X"                  
 [7] "Average.of.Time.Std.Dev.Body.Acceleration.Y"                   "Average.of.Time.Std.Dev.Body.Acceleration.Z"                  
 [9] "Average.of.Time.Mean.Gravity.Acceleration.X"                   "Average.of.Time.Mean.Gravity.Acceleration.Y"                  
[11] "Average.of.Time.Mean.Gravity.Acceleration.Z"                   "Average.of.Time.Std.Dev.Gravity.Acceleration.X"               
[13] "Average.of.Time.Std.Dev.Gravity.Acceleration.Y"                "Average.of.Time.Std.Dev.Gravity.Acceleration.Z"               
[15] "Average.of.Time.Mean.Body.Acceleration.Jerk.X"                 "Average.of.Time.Mean.Body.Acceleration.Jerk.Y"                
[17] "Average.of.Time.Mean.Body.Jerk.Acceleration.Z"                 "Average.of.Time.Std.Dev.Body.Acceleration.Jerk.X"             
[19] "Average.of.Time.Std.Dev.Body.Acceleration.Jerk.Y"              "Average.of.Time.Std.Dev.Body.Acceleration.Jerk.Z"             
[21] "Average.of.Time.Mean.Body.Gyro.Axis.X"                         "Average.of.Time.Mean.Body.Gyro.Axis.Y"                        
[23] "Average.of.Time.Mean.Body.Gyro.Axis.Z"                         "Average.of.Time.Std.Dev.Body.Gyro.Axis.X"                     
[25] "Average.of.Time.Std.Dev.Body.Gyro.Axis.Y"                      "Average.of.Time.Std.Dev.Body.Gyro.Axis.Z"                     
[27] "Average.of.Time.Mean.Body.Gyro.Jerk.Axis.X"                    "Average.of.Time.Mean.Body.Gyro.Jerk.Axis.Y"                   
[29] "Average.of.Time.Mean.Body.Gyro.Jerk.Axis.Z"                    "Average.of.Time.Std.DEv.Body.Gyro.Jerk.Axis.X"                
[31] "Average.of.Time.Std.Dev.Body.Gyro.Jerk.Axis.Y"                 "Average.of.Time.Std.Dev.Body.Gyro.Jerk.Axis.Z"                
[33] "Average.of.Time.Mean.Body.Acceleration.Magnitude"              "Average.of.Time.Std.Dev.Body.Acceleration.Magnitude"          
[35] "Average.of.Time.Mean.Gravity.Acceleration.Magnitude"           "Average.of.Time.Std.Dev.Gravity.Acceleration.Magnitude"       
[37] "Average.of.Time.Mean.Body.Acceleration.Jerk.Magnitude"         "Average.of.Time.Std.Dev.Body.Acceleration.Jerk.Magnitude"     
[39] "Average.of.Time.Mean.Body.Gyro.Magnitude"                      "Average.of.Time.Std.Dev.Body.Gyro.Magnitude"                  
[41] "Average.of.Time.Mean.Body.Gyro.Jerk.Magnitude"                 "Average.of.Time.Std.Dev.Body.Gyro.Jerk.Magnitude"             
[43] "Average.of.Frequency.Mean.Body.Acceleration.X"                 "Average.of.Frequency.Mean.Body.Acceleration.Y"                
[45] "Average.of.Frequency.Mean.Body.Acceleration.Z"                 "Average.of.Frequency.Std.Dev.Body.Acceleration.X"             
[47] "Average.of.Frequency.Std.Dev.Body.Acceleration.Y"              "Average.of.Frequency.Std.Dev.Body.Acceleration.Z"             
[49] "Average.of.Frequency.Mean.Body.Acceleration.Jerk.X"            "Average.of.Frequency.Mean.Body.Acceleration.Jerk.Y"           
[51] "Average.of.Frequency.Mean.Body.Acceleration.Jerk.Z"            "Average.of.Frequency.Std.Dev.Body.Acceleration.Jerk.X"        
[53] "Average.of.Frequency.Std.Dev.Body.Acceleration.Jerk.Y"         "Average.of.Frequency.Std.Dev.Body.Acceleration.Jerk.Z"        
[55] "Average.of.Frequency.Mean.Body.Gyro.Axis.X"                    "Average.of.Frequency.Mean.Body.Gyro.Axis.Y"                   
[57] "Average.of.Frequency.Mean.Body.Gyro.Axis.Z"                    "Average.of.Frequency.Std.Dev.Body.Gyro.Axis.X"                
[59] "Average.of.Frequency.Std.Dev.Body.Gyro.Axis.Y"                 "Average.of.Frequency.Std.Dev.Body.Gyro.Axis.Z"                
[61] "Average.of.Frequency.Mean.Body.Acceleration.Magnitude"         "Average.of.Frequency.Std.Dev.Body.Acceleration.Magnitude"     
[63] "Average.of.Frequency.Mean.Body.Acceleration.Jerk.Magnitude"    "Average.of.Frequency.Std.Dev.Body.Acceleration.Jerk.Magnitude"
[65] "Average.of.Frequency.Mean.Body.Gyro.Magnitude"                 "Average.of.Frequency.Std.Dev.Body.Gyro.Magnitude"             
[67] "Average.of.Frequency.Mean.Body.Gyro.Jerk.Magnitude"            "Average.of.Frequency.Std.Dev.Body.Gyro.Jerk.Magnitude" 

```

Original Feature Selection from the originalk File - Please refer the additional variables for the question Dataset above.
=================
```
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
```
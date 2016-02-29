#Variables:

#### activity
```
[1] "LAYING"             "SITTING"            "STANDING"           "WALKING"           
[5] "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"  
```
	

#### subject
Subject Identification Number: 

`denoted by numbers 1:30`

#### measurements
```
[1] "tbodyaccmeanx"                     "tbodyaccmeany"                    
 [3] "tbodyaccmeanz"                     "tbodyaccstdx"                     
 [5] "tbodyaccstdy"                      "tbodyaccstdz"                     
 [7] "tgravityaccmeanx"                  "tgravityaccmeany"                 
 [9] "tgravityaccmeanz"                  "tgravityaccstdx"                  
[11] "tgravityaccstdy"                   "tgravityaccstdz"                  
[13] "tbodyaccjerkmeanx"                 "tbodyaccjerkmeany"                
[15] "tbodyaccjerkmeanz"                 "tbodyaccjerkstdx"                 
[17] "tbodyaccjerkstdy"                  "tbodyaccjerkstdz"                 
[19] "tbodygyromeanx"                    "tbodygyromeany"                   
[21] "tbodygyromeanz"                    "tbodygyrostdx"                    
[23] "tbodygyrostdy"                     "tbodygyrostdz"                    
[25] "tbodygyrojerkmeanx"                "tbodygyrojerkmeany"               
[27] "tbodygyrojerkmeanz"                "tbodygyrojerkstdx"                
[29] "tbodygyrojerkstdy"                 "tbodygyrojerkstdz"                
[31] "tbodyaccmagmean"                   "tbodyaccmagstd"                   
[33] "tgravityaccmagmean"                "tgravityaccmagstd"                
[35] "tbodyaccjerkmagmean"               "tbodyaccjerkmagstd"               
[37] "tbodygyromagmean"                  "tbodygyromagstd"                  
[39] "tbodygyrojerkmagmean"              "tbodygyrojerkmagstd"              
[41] "fbodyaccmeanx"                     "fbodyaccmeany"                    
[43] "fbodyaccmeanz"                     "fbodyaccstdx"                     
[45] "fbodyaccstdy"                      "fbodyaccstdz"                     
[47] "fbodyaccmeanfreqx"                 "fbodyaccmeanfreqy"                
[49] "fbodyaccmeanfreqz"                 "fbodyaccjerkmeanx"                
[51] "fbodyaccjerkmeany"                 "fbodyaccjerkmeanz"                
[53] "fbodyaccjerkstdx"                  "fbodyaccjerkstdy"                 
[55] "fbodyaccjerkstdz"                  "fbodyaccjerkmeanfreqx"            
[57] "fbodyaccjerkmeanfreqy"             "fbodyaccjerkmeanfreqz"            
[59] "fbodygyromeanx"                    "fbodygyromeany"                   
[61] "fbodygyromeanz"                    "fbodygyrostdx"                    
[63] "fbodygyrostdy"                     "fbodygyrostdz"                    
[65] "fbodygyromeanfreqx"                "fbodygyromeanfreqy"               
[67] "fbodygyromeanfreqz"                "fbodyaccmagmean"                  
[69] "fbodyaccmagstd"                    "fbodyaccmagmeanfreq"              
[71] "fbodybodyaccjerkmagmean"           "fbodybodyaccjerkmagstd"           
[73] "fbodybodyaccjerkmagmeanfreq"       "fbodybodygyromagmean"             
[75] "fbodybodygyromagstd"               "fbodybodygyromagmeanfreq"         
[77] "fbodybodygyrojerkmagmean"          "fbodybodygyrojerkmagstd"          
[79] "fbodybodygyrojerkmagmeanfreq"      "angletbodyaccmeangravity"         
[81] "angletbodyaccjerkmeangravitymean"  "angletbodygyromeangravitymean"    
[83] "angletbodygyrojerkmeangravitymean" "anglexgravitymean"                
[85] "angleygravitymean"                 "anglezgravitymean" 
```
*see data description section below for definitions.*

#Data Descriptions:

The following descriptions can be found in the *README.txt* file in the original *.zip* file once extracted. Keep in mind, we are only using the mean and standard deviation variables of the features listed below:

```
Feature Selection 
=================

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
```
#Transformations:

From the original collection of *.txt* files, the script creates tidy data frames, merges the test and train data sets and selects only variables including mean or standard deviation, then outputs a tidy *.csv* file to the working directory that includes the means for the different subjects by activity type for each variable in the merged data set.

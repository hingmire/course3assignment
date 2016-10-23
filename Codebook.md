1. Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

2. Code Book
2.1. activity_labels 
activitynum - Unique Number of Activity
activitylabel - Description of Activity
2.2. featuresnames
featuresnames - Unique Description for each feature
2.3. testdata
2.3.1. activitynum - Unique Number of Activity
2.3.2. subjectnumber - Unique Number of a Subject who performed relevant activity
2.3.3. Following "TIME" measurements representing mean and standard deviation values

A. Mean and Standard Deviation of Body Acceleration Time in X, Y and Z directions

"tBodyAcc-mean()-X"                   
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"

B. Mean and Standard Deviation of Gravity Acceleration Time in X, Y and Z directions

"tGravityAcc-mean()-X"                
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"                 
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"

C. Mean and Standard Deviation of Body Jerk Acceleration Time in X, Y and Z directions

"tBodyAccJerk-mean()-X"               
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"

D. Mean and Standard Deviation of Body Angular Time in X, Y and Z directions

"tBodyGyro-mean()-X"                  
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"                   
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"

E. Mean and Standard Deviation of Body Angular Jerk Time in X, Y and Z directions

"tBodyGyroJerk-mean()-X"              
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"

F. Mean and Standard Deviation of Body Acceleration in X, Y and Z directions

"tBodyAccMag-mean()"                  
"tBodyAccMag-std()"

G. Mean and Standard Deviation of Gravity Acceleration in X, Y and Z directions

"tGravityAccMag-mean()"
"tGravityAccMag-std()"                

H. Mean and Standard Deviation of Body Jerk Acceleration in X, Y and Z directions

"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"

I. Mean and Standard Deviation of Body Angular Velocity in X, Y and Z directions

"tBodyGyroMag-mean()"                 
"tBodyGyroMag-std()"

J. Mean and Standard Deviation of Body Jerk Angular Velocity in X, Y and Z directions

"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"              

2.3.4. Following "FREQUENCY" measurements representing mean and standard deviation values

A. Mean and Standard Deviation of Body Acceleration Frequency in X, Y and Z directions

"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"                   
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"                    

B. Mean and Standard Deviation of Body Jerk Acceleration Frequency in X, Y and Z directions

"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"               
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"                
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"
"fBodyAccJerk-meanFreq()-Z"           

C. Mean and Standard Deviation of Body Angular Frequency in X, Y and Z directions

"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"                  
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"                   
"fBodyGyro-meanFreq()-X"
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"              

D. Mean and Standard Deviation of Body Acceleration Frequency Magnitude in X, Y and Z directions

"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyAccMag-meanFreq()"              

E. Mean and Standard Deviation of Body Jerk Acceleration Frequency Magnitude in X, Y and Z directions

"fBodyBodyAccJerkMag-mean()"
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()"      

F. Mean and Standard Deviation of Body Angular Frequency Magnitude in X, Y and Z directions

"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"
"fBodyBodyGyroMag-meanFreq()"         

G. Mean and Standard Deviation of Body Jerk Angular Frequency Magnitude in X, Y and Z directions

"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"     

2.3.5 testdata_subjects
subjectnumber - Unique number associated with subject participated in the experiments


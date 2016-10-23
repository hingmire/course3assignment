## Course 3 - Assignment

## 1. loading dplyr packages as we will use some of the functions from this package
install.packages("dplyr")
library(dplyr)


## 2. Read common files like activity, feature

## 2A. Read activity labels
activity_labels <- read.table("activity_labels.txt")
names(activity_labels)[1] <- "activitynum"
names(activity_labels)[2] <- "activitylabel"

## 2B. Read feature list
features <- read.table("features.txt")
names(features)[2] <- "featurename"

## 2C. Seperate feature names from feature list
featuresnames <-features[,2]

## 2D. Convert featurenames to character vector
featuresnames <-as.character(featuresnames)

## 3. Read test data, test activtity and test subjects

## 3A. Read Test readings from x-test file
testdata <- read.table("X_test.txt")

## 3B. set column names for testdata using featurename file
testdata <- setNames(testdata, featuresnames)

## 3C. Identify cols related to mean and std. deviation of measurement
colnum <- grep("-mean\\(\\)|-std\\(\\)", colnames(testdata))

## 3D. Subset cols containing only mean and std. deviation of measurement
testdata <- testdata[,colnum]

## 3E. Read activtiy numbers from "y_test" file for each of the reading in the x_test file (activity number)
testdata_activitynum <- read.table("y_test.txt")

## 3F. Change column header
names(testdata_activitynum)[1] <- "activitynum"

## 3G. Add activtiy number to test data set
testdata <-cbind(testdata,testdata_activitynum)

## 3H. Read subject numbers for test data
testdata_subjects <- read.table("subject_test.txt")
names(testdata_subjects)[1] <- "subjectnumber"

## 3I. Add subject number to test data set
testdata <-cbind(testdata,testdata_subjects)

## 4. Read training data, traning activtities and traning subjects

## 4A. Read training readings from x-test file
traindata <- read.table("X_train.txt")

## 4B. set column names for training data using featurename file
traindata <- setNames(traindata, featuresnames)

## 4C. Identify cols related to mean and std. deviation of measurement
colnum <- grep("-mean\\(\\)|-std\\(\\)", colnames(traindata))

## 4D. Subset cols containing only mean and std. deviation of measurement
traindata <- traindata[,colnum]

## 4E. Read activtiy numbers from "y_train" file for each of the reading in the x_train file (activity number)
traindata_activitynum <- read.table("y_train.txt")

## 4F. Change column header
names(traindata_activitynum)[1] <- "activitynum"

## 4G. Add activtiy number to training data set
traindata <-cbind(traindata,traindata_activitynum)

## 4H. Read subject numbers for training data
traindata_subjects <- read.table("subject_train.txt")
names(traindata_subjects)[1] <- "subjectnumber"

## 4I. Add subject number to test data set
traindata <-cbind(traindata,traindata_subjects)

## 5. Merge Test and Training Data
total_data <- rbind(testdata,traindata)

## 6. Add acticity labels
total_data$activity_label <- as.character(activity_labels[match(total_data$activitynum,activity_labels$activitynum),'activitylabel'])

## 7. Sub set data frame to remove activitynum cols
total_data_final <- total_data [,! colnames(total_data) %in% c("activitynum","datatype")] 

## 8. Add descriptive labels to the column names
names(total_data_final) <- gsub("^tBodyAcc-", "Body Acceleration Time-", names(total_data_final))
names(total_data_final) <- gsub("^tGravityAcc-", "Gravity Acceleration Time -", names(total_data_final))
names(total_data_final) <- gsub("^tGravityAcc-", "Gravity Acceleration Time -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyAccJerk-", "Body Jerk Acceleration Time -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyGyro-", "Body Angular Time -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyGyroJerk-", "Body Angular Jerk Time -", names(total_data_final))

names(total_data_final) <- gsub("^tBodyAccMag-", "Body Acceleration Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^tGravityAccMag-", "Gravity Acceleration Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyAccJerkMag-", "Body Jerk Acceleration Jerk Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyGyroMag-", "Body Angular Velocity Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^tBodyGyroJerkMag-", "Body Jerk Angular Velocity Magnitude -", names(total_data_final))

names(total_data_final) <- gsub("^fBodyAcc-", "Body Acceleration Frequency -", names(total_data_final))
names(total_data_final) <- gsub("^fBodyAccJerk-", "Body Jerk Acceleration Frequency -", names(total_data_final))
names(total_data_final) <- gsub("^fBodyGyro-", "Body Angular Velocity Frequency -", names(total_data_final))

names(total_data_final) <- gsub("^fBodyAccMag-", "Body Acceleration Frequency Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^fBodyBodyAccJerkMag-", "Body Jerk Acceleration Frequency Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^fBodyBodyGyroMag-", "Body Angular Frequency Magnitude -", names(total_data_final))
names(total_data_final) <- gsub("^fBodyBodyGyroJerkMag-", "Body Jerk Angular Frequency Magnitude -", names(total_data_final))


## 9. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_data <- total_data_final %>% group_by(activity_label,subjectnumber) %>% summarise_each(funs(mean))


## 10. Write final data set to a seperate file "final_data.txt"
write.table(final_data, "final_data.txt", sep="\t",row.names = FALSE)


Source Data
1. Download source data from following location
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the zip file to working directory

3. Run script "Run_analysis.R"

At high level "Run_analysis.R" does following processing on raw data

3. Processing of activity labels and features files
3A. Read activity labels
3B. Read feature list
3C. Seperate feature names from feature list
3D. Convert featurenames to character vector

4. Processing of test data, associated activtities and subjects
4A. Read Test readings from x-test file
4B. set column names for testdata using featurename file
4C. Identify columns related to mean and std. deviation of measurement
4D. Subset cols containing only mean and std. deviation of measurement
4E. Read activtiy numbers from "y_test" file for each of the reading in the x_test file (activity number)
4F. Change column header
4G. Add activtiy number to test data set
4H. Read subject numbers for test data
4I. Add subject number to test data set

5. Processing of training data, associated activtities and subjects
5A. Read training readings from x-test file
5B. set column names for training data using featurename file
5C. Identify cols related to mean and std. deviation of measurement
5D. Subset cols containing only mean and std. deviation of measurement
5E. Read activtiy numbers from "y_train" file for each of the reading in the x_train file (activity number)
5F. Change column header
5G. Add activtiy number to training data set
5H. Read subject numbers for training data
5I. Add subject number to test data set


6. Merge Test and Training Data
7. Add activity labels
8. Sub set data frame to remove activitynum cols
9. Add descriptive column names
10. Creates a second independent tidy data set with the average of each variable for each activity and each subject.
11. Write final data set to a seperate file "final_data.txt"





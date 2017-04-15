# tidydata.txt - Code Book

The below is a description of the data provided in the "tidy.txt" file

## Source Data
Data was sourced from the following location:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformations
* The file X_text.txt was read
* subject column was added to the left of X_test.txt to identify the subject performing the test (subject_text.txt) 
* activity column was added after subject.  The activity was added as a column from (Y_test.txt) which contained an integer identifying the activity.  It was then changed to a factor using the descriptions found in (features.txt).
* The same above 3 steps were performed for X_train.txt
* The two sets of data were combined to one set
* The data was melted based on subject and activity
* A new data set was created to store the aveage of each subject and activity
* Data set was then written to a file (tidy.txt)


## Identifier Columns
* `subject` - Identifier from 1 - 30 of the test subject
* `activity` - Description of the activity being measured

## Measurements
Only measurements which are standard deviation and mean were extracted.  Each subject performed the tests multiple times and each measurment below is an average of the each time the test was performed.
* tBodyAccMeanX 
* tBodyAccMeanY 
* tBodyAccMeanZ 
* tBodyAccStdX 
* tBodyAccStdY 
* tBodyAccStdZ 
* tGravityAccMeanX 
* tGravityAccMeanY 
* tGravityAccMeanZ 
* tGravityAccStdX 
* tGravityAccStdY 
* tGravityAccStdZ 
* tBodyAccJerkMeanX 
* tBodyAccJerkMeanY 
* tBodyAccJerkMeanZ 
* tBodyAccJerkStdX 
* tBodyAccJerkStdY 
* tBodyAccJerkStdZ 
* tBodyGyroMeanX 
* tBodyGyroMeanY 
* tBodyGyroMeanZ 
* tBodyGyroStdX 
* tBodyGyroStdY 
* tBodyGyroStdZ 
* tBodyGyroJerkMeanX 
* tBodyGyroJerkMeanY 
* tBodyGyroJerkMeanZ 
* tBodyGyroJerkStdX 
* tBodyGyroJerkStdY 
* tBodyGyroJerkStdZ 
* tBodyAccMagMean 
* tBodyAccMagStd 
* tGravityAccMagMean 
* tGravityAccMagStd 
* tBodyAccJerkMagMean 
* tBodyAccJerkMagStd 
* tBodyGyroMagMean 
* tBodyGyroMagStd 
* tBodyGyroJerkMagMean 
* tBodyGyroJerkMagStd 
* fBodyAccMeanX 
* fBodyAccMeanY 
* fBodyAccMeanZ 
* fBodyAccStdX 
* fBodyAccStdY 
* fBodyAccStdZ 
* fBodyAccMeanFreqX 
* fBodyAccMeanFreqY 
* fBodyAccMeanFreqZ 
* fBodyAccJerkMeanX 
* fBodyAccJerkMeanY 
* fBodyAccJerkMeanZ 
* fBodyAccJerkStdX 
* fBodyAccJerkStdY 
* fBodyAccJerkStdZ 
* fBodyAccJerkMeanFreqX 
* fBodyAccJerkMeanFreqY 
* fBodyAccJerkMeanFreqZ 
* fBodyGyroMeanX 
* fBodyGyroMeanY 
* fBodyGyroMeanZ 
* fBodyGyroStdX 
* fBodyGyroStdY 
* fBodyGyroStdZ 
* fBodyGyroMeanFreqX 
* fBodyGyroMeanFreqY 
* fBodyGyroMeanFreqZ 
* fBodyAccMagMean 
* fBodyAccMagStd 
* fBodyAccMagMeanFreq 
* fBodyBodyAccJerkMagMean 
* fBodyBodyAccJerkMagStd 
* fBodyBodyAccJerkMagMeanFreq 
* fBodyBodyGyroMagMean 
* fBodyBodyGyroMagStd 
* fBodyBodyGyroMagMeanFreq 
* fBodyBodyGyroJerkMagMean 
* fBodyBodyGyroJerkMagStd 
* fBodyBodyGyroJerkMagMeanFreq


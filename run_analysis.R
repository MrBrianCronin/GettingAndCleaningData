##  Script to perform analysis specified by Getting and Cleaning Data - Week 4 project
##  Assumes the data set has been downloaded and unzipped from the following location
##  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##  Assumes working directory is set to the UCI HAR Dataset unzipped folder

##  Read in the features
features <- read.table("features.txt")

## Identify the features which are mean and standard deviation
extractFeatures <- grep(".*mean.*|*.std.*",features$V2)

## Read the Test dataset only extracting the 
testData <- read.table("./test/X_test.txt")[,extractFeatures]
testActivities <- read.table("./test/Y_test.txt")
testSubjects <- read.table("./test/subject_test.txt")

## Read the Train dataset
trainData <- read.table("./train/X_train.txt")[,extractFeatures]
trainTests <- read.table("./train/Y_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")

## Add subjects and activities to the data sets
testData <- cbind(testSubjects,testActivities,testData)
trainData <- cbind(trainSubjects,trainTests,trainData)

## Combine the data sets
combinedData <- rbind(trainData,testData)

## Assign column labels
colnames(combinedData) <- c("subject","activity",as.character(features$V2[extractFeatures]))


## Read in the activity names
activities <- read.table("activity_labels.txt")

## Change the activity from numeric to a factor using name of the activity
combinedData$activity <- factor(combinedData$activity, levels = activities[,1], labels = activities[,2])

## Melt the data so averages can be applied by subject and activity
meltedData <- melt(combinedData,id=c("subject","activity"))

## Create new dataset averaging subject and activity by variable
subjectActivityAverage <- dcast(meltedData, subject + activity ~ variable,mean)

## Write the dataset
write.table(subjectActivityAverage, "tidy.txt", row.names = FALSE, quote = FALSE)


      
      
      
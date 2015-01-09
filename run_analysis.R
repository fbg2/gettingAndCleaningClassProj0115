################################################################################
#
# Code to accomplish the problem set assignment in Getting and cleaning Data
# Coursera course, January, 2015
#
# fbg2
#
# From the assignment:
#
# Class Project
# 
# The purpose of this project is to demonstrate your ability to collect, work
# with, and clean a data set. The goal is to prepare tidy data that can be used
# for later analysis. You will be graded by your peers on a series of yes/no
# questions related to the project. You will be required to submit: 1) a tidy 
# data set as described below, 2) a link to a Github repository with your
# script for performing the analysis, and 3) a code book that describes the
# variables, the data, and any transformations or work that you performed to
# clean up the data called CodeBook.md. You should also include a README.md
# in the repo with your scripts. This repo explains how all of the scripts work
# and how they are connected.
#
# One of the most exciting areas in all of data science right now is wearable
# computing - see for example this article . Companies like Fitbit, Nike, and
# Jawbone Up are racing to develop the most advanced algorithms to attract new
# users. The data linked to from the course website represent data collected
# from the accelerometers from the Samsung Galaxy S smartphone. A full
# description is available at the site where the data was obtained: 
#  
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#   
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# You should create one R script called run_analysis.R that does the following.
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#
#######
# 
# The approach below is to use parameters in read.table to do some of the
# required cleaning of the data
# 
# A note on tidying the original data: the data is not too far from tidy.
# indeed, each "feature" is a distinct variable.  
# On the other hand, the data column names are in a distinct file and 
# heavily abbreviated.  also, activity codes and subject IDs are in
# distinct tables associated with the feature vectors by line number
#
# so main tasks are to read the data, combine test and training data, subset
# the columns, clean up the names, and merge in some columns
#
# I do this below into a variable called TidyActivityData
#
# Of course then we need to generate the second Tidy dataset-- they one
# required in item 5. above.
# I do this below into a variable called SecondTidyTable, which I
# also write to a text file for upload into the problem solution.
#
################################################################################

library(dplyr)

################################################################################
#
# Helper function to clean up variable names
#
################################################################################
cleanVarName <- function(nm) {
  result = ""
# I liked code below but it makes names too long
#  if(substr(nm,1,1) == 'f') 
#  {
#    result <- "FrequencyDomain"
#    nm <- substr(nm, 2, nchar(nm))
#  }
#  else
#  {
#    if(substr(nm,1,1) == 't') 
#    {
#      result <- "TimeDomain"
#      nm <- substr(nm, 2, nchar(nm))
#    }
#  }
  result <- paste0(result, nm)
  result <- sub("Acc", "Accelerometer", result)
  result <- sub("Gyro", "Gyroscope", result)
  result <- sub("-mean\\(\\)", "Mean", result)
  result <- sub("-std\\(\\)", "Std", result)
  result <- sub("-X", "X", result)
  result <- sub("-Y", "Y", result)
  result <- sub("-Z", "Z", result)
  result <- sub("BodyBody", "Body", result)
  
  return(result)
}

################################################################################
#
# Main Function:
#

#
# First, read the various input files, initially cleaning by using read.table
# parameters
#
featureNames <- read.table("UCI HAR Dataset/features.txt", header=FALSE,
                           strip.white = TRUE,encoding="UTF-8", skipNul=TRUE,
                           stringsAsFactors=FALSE)
activityNames <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE,
                           strip.white = TRUE,encoding="UTF-8", skipNul=TRUE,
                           stringsAsFactors=FALSE)
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", 
                           header = FALSE, strip.white = TRUE,
                           numerals="warn.loss", 
                           encoding="UTF-8", skipNul=TRUE)
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt",
                             header = FALSE, strip.white = TRUE,
                             numerals="warn.loss", 
                             encoding="UTF-8", skipNul=TRUE)
testFeatures <- read.table(file = "UCI HAR Dataset/test/X_test.txt",
                           header = FALSE, strip.white = TRUE,
                           numerals="warn.loss", encoding="UTF-8", 
                           skipNul=TRUE)

trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt",
                            header = FALSE, strip.white = TRUE,
                            numerals="warn.loss",
                            encoding="UTF-8", skipNul=TRUE)
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt",
                              header = FALSE, strip.white = TRUE,
                              numerals="warn.loss",
                              encoding="UTF-8", skipNul=TRUE)
trainFeatures <- read.table(file = "UCI HAR Dataset/train/X_train.txt",
                            header = FALSE, strip.white = TRUE,
                            numerals="warn.loss", encoding="UTF-8", 
                            skipNul=TRUE)

#
# Combine test and training data
#
Subjects <- rbind(testSubjects, trainSubjects)
Activities <- rbind(testActivities, trainActivities)
Features <- rbind(testFeatures, trainFeatures)

#
# Clean up temporary variables
#
rm("testSubjects", "testActivities", "testFeatures")
rm("trainSubjects", "trainActivities", "trainFeatures")

#
# Extract relevant features
#
RelevantFeatureNames <- featureNames[grepl("mean\\(\\)", featureNames[,2]),]
RelevantFeatureNames <- rbind(RelevantFeatureNames, 
                             featureNames[grepl("std\\(\\)", featureNames[,2]),])

#
# Now, begin to create a Tidy table of activity data, by first extracting
# only the features correspoinding to mean's and std's
#
TidyActivityData <- Features[,RelevantFeatureNames[,1]]

#
# Clean up the column names for the features
#
nms <- lapply(RelevantFeatureNames[,2], cleanVarName)
names(TidyActivityData) <- nms

#
# Augment the Tidy Activity Data array with Subject IDs
#
TidyActivityData$SubjectID=Subjects[[1]]

#
# Augment the Tidy Activity Data array with strings indicating the
# activity
#
TidyActivityData <- mutate(TidyActivityData, Activity=activityNames[
  Activities[[1]],2])

#
# From the data set above, creates a second, independent tidy data set with
# the average of each variable for each activity and each subject.
#

#
# build a massive summarize command:
#
cmd <- paste(as.character(lapply(nms, function (x) {return(paste0("mean(", x, ")"))}), sep=", "), collapse=", ")
cmd <- paste("SecondTidyTable <- summarize( group_by(TidyActivityData, Activity, SubjectID), ", cmd, ")")
eval(parse(text=cmd))

write.table(x = SecondTidyTable, file = "project1_out.txt", row.name=FALSE )

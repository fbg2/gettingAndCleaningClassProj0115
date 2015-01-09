Code Book
=========

A code book for the Getting and Cleaning Data Coursera course Class Project, Jan. 2015
--------------------------------------------------------------------------------------

### By Frank G (fbg2)

IMPORTANT NOTE: ALL UNITS ARE THE SAME AS THE UNITS GIVEN IN THE RAW DATA
=========================================================================

### Background

Please see the accompanying ReadMe.md file for a description of the data in this project, and what one must do to create the processed data

### The processed data is obtained from the raw data as follows:

(as described in the README.md file)

1. Obtain the raw data (e.g. by downloading the file above)
2. Unzip into a directory (folder) where the program "run_analysis.R" is located, so that the data is located in a file tree in the directory called "UCI HAR Dataset" (this should normally be the name if you unzipped the data)
3. Run the script run_analysis.R in the R language, with that same directory as your working directory (i.e. run in the parent directory of the 'UCI HAR Dataset' directory).
4. Note: you will need to have the package dplyr available to be loaded by the script.  The script will load the library, but it must be installed (e.g. by the command "install.packages(dplyr)")


## The output of the script comprises:

1. a workspace with the variables listed below
2. a file project1_out.txt -- the text file required to be uploaded as part of the project, which represents the contests of the variable SecondTidyTable described below

### the variables (tables) which will be in memory after running the script are:

### activityNames -- a data frame obtained from reading the raw file activity_labels.txt
 * **V1** the activity number
 * **V2** the activity name

### featureNames -- a data frame obtained from reading the raw file features.txt
 * **V1** the feature number
 * **V2** the feature name

### Activities -- a data frame obtained by reading and then merging the raw files test/y_test.txt, and train/y_train.txt
 * **V1** the activity number for each row of the combined data

### Subjects -- a data frame obtained by reading and then merging the raw files test/subject_test.txt, and train/subject_train.txt
 * **V1** the subject number for each row of the combined data

### Features -- a data frame of 10299 observations of 561 variables -- obtained by reading and then merging the raw files test/X_test.txt, and train/X_train.txt
 * **V1 ... V561** -- columns corresponding to the 561 samples in each row of the raw feature data from the raw problem set, read into R data frames and merged (test, followed by train data)

### RelevantFeatureNames -- a subset of featureName, corresponding to those features that contain the text "mean()", or "std()"

### TidyActivityData -- a tidy table of features with the following columns:

 * **tBodyAccelerometerMeanX** : Time domain mean value for body accelerometer X coordinates for each observation
 * **tBodyAccelerometerMeanY** : Time domain mean value for body accelerometer Y coordinates for each observation
 * **tBodyAccelerometerMeanZ** : Time domain mean value for body accelerometer Z coordinates for each observation
 * **tGravityAccelerometerMeanX** : Time domain mean value for gravity accelerometer X coordinates for each observation
 * **tGravityAccelerometerMeanY** : Time domain mean value for gravity accelerometer Y coordinates for each observation
 * **tGravityAccelerometerMeanZ** : Time domain mean value for gravity accelerometer Z coordinates for each observation
 * **tBodyAccelerometerJerkMeanX** : Time domain mean value for body accelerometer jerk, X coordinates for each observation
 * **tBodyAccelerometerJerkMeanY** : Time domain mean value for body accelerometer jerk, Y coordinates for each observation
 * **tBodyAccelerometerJerkMeanZ** : Time domain mean value for body accelerometer jerk, Z coordinates for each observation
 * **tBodyGyroscopeMeanX** : Time domain mean value for body Gyroscope, X coordinates for each observation
 * **tBodyGyroscopeMeanY** : Time domain mean value for body Gyroscope, Y coordinates for each observation
 * **tBodyGyroscopeMeanZ** : Time domain mean value for body Gyroscope, Z coordinates for each observation
 * **tBodyGyroscopeJerkMeanX** : Time domain mean value for body Gyroscope jerk, X coordinates for each observation
 * **tBodyGyroscopeJerkMeanY** : Time domain mean value for body Gyroscope jerk, Y coordinates for each observation
 * **tBodyGyroscopeJerkMeanZ** : Time domain mean value for body Gyroscope jerk, Z coordinates for each observation
 * **tBodyAccelerometerMagMean** : Time domain mean value for body accelerometer magnitude, for each observation
 * **tGravityAccelerometerMagMean** : Time domain mean value for gravity accelerometer magnitude, for each observation
 * **tBodyAccelerometerJerkMagMean** : Time domain mean value for body accelerometer jerk magnitude, for each observation
 * **tBodyGyroscopeMagMean** : Time domain mean value for body gyroscope magnitude, for each observation
 * **tBodyGyroscopeJerkMagMean** : Time domain mean value for body gyroscope jerk magnitude, for each observation
 * **fBodyAccelerometerMeanX** : Frequency domain mean value for body accelerometer X coordinates for each observation
 * **fBodyAccelerometerMeanY** : Frequency domain mean value for body accelerometer Y coordinates for each observation
 * **fBodyAccelerometerMeanZ** : Frequency domain mean value for body accelerometer Z coordinates for each observation
 * **fBodyAccelerometerJerkMeanX** : Frequency domain mean value for body accelerometer jerk, X coordinates for each observation
 * **fBodyAccelerometerJerkMeanY** : Frequency domain mean value for body accelerometer jerk, Y coordinates for each observation
 * **fBodyAccelerometerJerkMeanZ** : Frequency domain mean value for body accelerometer jerk, Z coordinates for each observation
 * **fBodyGyroscopeMeanX** : Frequency domain mean value for body gyroscope, X coordinates for each observation
 * **fBodyGyroscopeMeanY** : Frequency domain mean value for body gyroscope, Y coordinates for each observation
 * **fBodyGyroscopeMeanZ** : Frequency domain mean value for body gyroscope, Z coordinates for each observation
 * **fBodyAccelerometerMagMean** : Frequency domain mean value for body accelerometer mangitude for each observation
 * **fBodyAccelerometerJerkMagMean** : Frequency domain mean value for body accelerometer jerk mangitude for each observation
 * **fBodyGyroscopeMagMean** : Frequency domain mean value for body gyroscope mangitude for each observation
 * **fBodyGyroscopeJerkMagMean** : Frequency domain mean value for body gyroscope jerk mangitude for each observation
 * **tBodyAccelerometerStdX** : Time domain standard deviation for body accelerometer X coordinates for each observation
 * **tBodyAccelerometerStdY** : Time domain standard deviation for body accelerometer Y coordinates for each observation
 * **tBodyAccelerometerStdZ** : Time domain standard deviation for body accelerometer Z coordinates for each observation
 * **tGravityAccelerometerStdX** : Time domain standard deviation for gravity accelerometer X coordinates for each observation
 * **tGravityAccelerometerStdY** : Time domain standard deviation for gravity accelerometer Y coordinates for each observation
 * **tGravityAccelerometerStdZ** : Time domain standard deviation for gravity accelerometer Z coordinates for each observation
 * **tBodyAccelerometerJerkStdX** : Time domain standard deviation for body accelerometer jerk, X coordinates for each observation
 * **tBodyAccelerometerJerkStdY** : Time domain standard deviation for body accelerometer jerk, Y coordinates for each observation
 * **tBodyAccelerometerJerkStdZ** : Time domain standard deviation for body accelerometer jerk, Z coordinates for each observation
 * **tBodyGyroscopeStdX** : Time domain standard deviation for body Gyroscope, X coordinates for each observation
 * **tBodyGyroscopeStdY** : Time domain standard deviation for body Gyroscope, Y coordinates for each observation
 * **tBodyGyroscopeStdZ** : Time domain standard deviation for body Gyroscope, Z coordinates for each observation
 * **tBodyGyroscopeJerkStdX** : Time domain standard deviation for body Gyroscope jerk, X coordinates for each observation
 * **tBodyGyroscopeJerkStdY** : Time domain standard deviation for body Gyroscope jerk, Y coordinates for each observation
 * **tBodyGyroscopeJerkStdZ** : Time domain standard deviation for body Gyroscope jerk, Z coordinates for each observation
 * **tBodyAccelerometerMagStd** : Time domain standard deviation for body accelerometer magnitude, for each observation
 * **tGravityAccelerometerMagStd** : Time domain standard deviation for gravity accelerometer magnitude, for each observation
 * **tBodyAccelerometerJerkMagStd** : Time domain standard deviation for body accelerometer jerk magnitude, for each observation
 * **tBodyGyroscopeMagStd** : Time domain standard deviation for body gyroscope magnitude, for each observation
 * **tBodyGyroscopeJerkMagStd** : Time domain standard deviation for body gyroscope jerk magnitude, for each observation
 * **fBodyAccelerometerStdX** : Frequency domain standard deviation for body accelerometer X coordinates for each observation
 * **fBodyAccelerometerStdY** : Frequency domain standard deviation for body accelerometer Y coordinates for each observation
 * **fBodyAccelerometerStdZ** : Frequency domain standard deviation for body accelerometer Z coordinates for each observation
 * **fBodyAccelerometerJerkStdX** : Frequency domain standard deviation for body accelerometer jerk, X coordinates for each observation
 * **fBodyAccelerometerJerkStdY** : Frequency domain standard deviation for body accelerometer jerk, Y coordinates for each observation
 * **fBodyAccelerometerJerkStdZ** : Frequency domain standard deviation for body accelerometer jerk, Z coordinates for each observation
 * **fBodyGyroscopeStdX** : Frequency domain standard deviation for body gyroscope, X coordinates for each observation
 * **fBodyGyroscopeStdY** : Frequency domain standard deviation for body gyroscope, Y coordinates for each observation
 * **fBodyGyroscopeStdZ** : Frequency domain standard deviation for body gyroscope, Z coordinates for each observation
 * **fBodyAccelerometerMagStd** : Frequency domain standard deviation for body accelerometer mangitude for each observation
 * **fBodyAccelerometerJerkMagStd** : Frequency domain standard deviation for body accelerometer jerk mangitude for each observation
 * **fBodyGyroscopeMagStd** : Frequency domain standard deviation for body gyroscope mangitude for each observation
 * **fBodyGyroscopeJerkMagStd** : Frequency domain standard deviation for body gyroscope jerk mangitude for each observation
 * **SubjectID** : ID number of the subject for the observation corresponding to each row
 * **Activity** : Activity character string for the observation corresponding to each row

### SecondTidyTable --  data frame summary table of average (mean) values of each variable in TidyActivityData, grouped by activity type and test subject ID number:

 * **SubjectID** : ID number of the subject for the observation corresponding to each group average
 * **Activity** : Activity character string for the observation corresponding to each group average
 * **mean(tBodyAccelerometerMeanX)** : Time domain mean value for body accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerMeanY)** : Time domain mean value for body accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerMeanZ)** : Time domain mean value for body accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerMeanX)** : Time domain mean value for gravity accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerMeanY)** : Time domain mean value for gravity accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerMeanZ)** : Time domain mean value for gravity accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkMeanX)** : Time domain mean value for body accelerometer jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkMeanY)** : Time domain mean value for body accelerometer jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkMeanZ)** : Time domain mean value for body accelerometer jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeMeanX)** : Time domain mean value for body Gyroscope, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeMeanY)** : Time domain mean value for body Gyroscope, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeMeanZ)** : Time domain mean value for body Gyroscope, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkMeanX)** : Time domain mean value for body Gyroscope jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkMeanY)** : Time domain mean value for body Gyroscope jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkMeanZ)** : Time domain mean value for body Gyroscope jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerMagMean)** : Time domain mean value for body accelerometer magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerMagMean)** : Time domain mean value for gravity accelerometer magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkMagMean)** : Time domain mean value for body accelerometer jerk magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeMagMean)** : Time domain mean value for body gyroscope magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkMagMean)** : Time domain mean value for body gyroscope jerk magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerMeanX)** : Frequency domain mean value for body accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerMeanY)** : Frequency domain mean value for body accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerMeanZ)** : Frequency domain mean value for body accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkMeanX)** : Frequency domain mean value for body accelerometer jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkMeanY)** : Frequency domain mean value for body accelerometer jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkMeanZ)** : Frequency domain mean value for body accelerometer jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeMeanX)** : Frequency domain mean value for body gyroscope, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeMeanY)** : Frequency domain mean value for body gyroscope, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeMeanZ)** : Frequency domain mean value for body gyroscope, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerMagMean)** : Frequency domain mean value for body accelerometer mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkMagMean)** : Frequency domain mean value for body accelerometer jerk mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeMagMean)** : Frequency domain mean value for body gyroscope mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeJerkMagMean)** : Frequency domain mean value for body gyroscope jerk mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerStdX)** : Time domain standard deviation for body accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerStdY)** : Time domain standard deviation for body accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerStdZ)** : Time domain standard deviation for body accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerStdX)** : Time domain standard deviation for gravity accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerStdY)** : Time domain standard deviation for gravity accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerStdZ)** : Time domain standard deviation for gravity accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkStdX)** : Time domain standard deviation for body accelerometer jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkStdY)** : Time domain standard deviation for body accelerometer jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkStdZ)** : Time domain standard deviation for body accelerometer jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeStdX)** : Time domain standard deviation for body Gyroscope, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeStdY)** : Time domain standard deviation for body Gyroscope, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeStdZ)** : Time domain standard deviation for body Gyroscope, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkStdX)** : Time domain standard deviation for body Gyroscope jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkStdY)** : Time domain standard deviation for body Gyroscope jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkStdZ)** : Time domain standard deviation for body Gyroscope jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerMagStd)** : Time domain standard deviation for body accelerometer magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tGravityAccelerometerMagStd)** : Time domain standard deviation for gravity accelerometer magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyAccelerometerJerkMagStd)** : Time domain standard deviation for body accelerometer jerk magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeMagStd)** : Time domain standard deviation for body gyroscope magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(tBodyGyroscopeJerkMagStd)** : Time domain standard deviation for body gyroscope jerk magnitude,, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerStdX)** : Frequency domain standard deviation for body accelerometer X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerStdY)** : Frequency domain standard deviation for body accelerometer Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerStdZ)** : Frequency domain standard deviation for body accelerometer Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkStdX)** : Frequency domain standard deviation for body accelerometer jerk, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkStdY)** : Frequency domain standard deviation for body accelerometer jerk, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkStdZ)** : Frequency domain standard deviation for body accelerometer jerk, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeStdX)** : Frequency domain standard deviation for body gyroscope, X coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeStdY)** : Frequency domain standard deviation for body gyroscope, Y coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeStdZ)** : Frequency domain standard deviation for body gyroscope, Z coordinates, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerMagStd)** : Frequency domain standard deviation for body accelerometer mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyAccelerometerJerkMagStd)** : Frequency domain standard deviation for body accelerometer jerk mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeMagStd)** : Frequency domain standard deviation for body gyroscope mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number
 * **mean(fBodyGyroscopeJerkMagStd)** : Frequency domain standard deviation for body gyroscope jerk mangitude, mean value over all observations in the training + test data with the given combination of activity type and test subject ID number

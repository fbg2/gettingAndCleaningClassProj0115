README.md
=========

A readme file for the Getting and Cleaning Data Coursera course Class Project, Jan. 2015
----------------------------------------------------------------------------------------

### By Frank G (fbg2)

### Background

The data in this project is processed from raw data available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), in accordance with the [January, 2015 Coursera class project for Getting and Cleaning Data](https://class.coursera.org/getdata-010/human_grading/view/courses/973497/assessments/3/submissions).

As descrbied in that assignment: a full description is available [at the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### The processed data is obtained from the raw data as follows:

1. Obtain the raw data (e.g. by downloading the file above)
2. Unzip into a directory (folder) where the program "run_analysis.R" is located, so that the data is located in a file tree in the directory called "UCI HAR Dataset" (this should normally be the name if you unzipped the data)
3. Run the script run_analysis.R in the R language, with that same directory as your working directory (i.e. run in the parent directory of the 'UCI HAR Dataset' directory).
4. Note: you will need to have the package dplyr available to be loaded by the script.  The script will load the library, but it must be installed (e.g. by the command "install.packages(dplyr)")

### Briefly, the script does the following:

* Reads the data into memory using the read.table R function with approriate parameters (see the code),
* (this will include data for "features" as documented in the raw data, the "activity" codes for each row of data, and the ID's of the "subjects" for each row of the data, for both test and training data)
* Combines test and training data as described in the problem set,
* Determines the proper subset of the columns (those which contain "mean()" or "std()" in accordance with the problem statement)
* Grabs that subset of the data
* Cleans up the row names for each feature, to be more descriptive
* Merges in a columns for the Activity name (as a string), and a column for the Subject ID (as an integer) -- this is done using the dplyr function mutate()

The results of the above bullets are in the table in the variable named TidyActivityData

Finally, the script builds a command for a rather large dplyr library function call to summarize, in order to create a second, independent tidy data set with the average of each variable for each activity and each subject.

## The output of the script comprises:

1. a workspace with the variables listed in the CodeBook file
2. a file project1_out.txt -- the text file required to be uploaded as part of the project, which represents the contests of the variable SecondTidyTable described below


### Introduction

This project works with data from a data set that was created from experiments involving 30 human volunteers performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Further information can be found  by using the following [link:](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The actual data used can be found at the following [link:](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Goal

The ultimate of the assignment is to create one or more scripts which will do the following:
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set (convert the number 1 to 6 into string descriptions of the activity)
4. Appropriately labels the data set with descriptive variable names (including cleaning the variable names so as to not cause any R function problems when using them)
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

### Initial Data Sets and Assumed Script Location

When unzipped, the data set will contain a folder called "UCI HAR Dataset."  That folder contains a test and train folder as well as several files.  The "README.txt" within the UCI HAR Dataset folder contains more detailed information on the files and their purpose.  The run_analysis.R script which I created for the project must be placed in the same folder that contains the unzipped data set.  The script uses relative pathing that relies on this assumption.

### Dependencies

1. The data set has been unzipped and is unmodified
2. The script (see below) is located within the same folder as the data set
3. A recent version of R has been installed
4. The script uses ddply function to calculate the avergae of each variable for each activity and subject.  ddply in turn relies on the plyr package being installed (install.packages("plyr"))
5. The folder into whch the script and data set has been placed does not contain a file called "TidyData.txt."  In the event that such a file already exists, the running of the script will overwrite it.

### R Script

Only one R script has been created for this assignment and will perform all of the steps that are required.  The script is called "run_analysis.R" and is commented so as to allow the user to follow the actions being performed and to recreate them if desired.

### Output of Script

The output of this script will be one file called "TidyData.txt" and this file will be written to the same folder in which the script and data set is located.  It is therefore important that no existing file with the name "TidyData.txt" exists within this folder.

### Components of Tidy Data

In order to adhere to tidy data principles, the following should be noted about the file, TidayData.txt, that the script creates:

1. Each variable is in one column
2. Each different observation of the variable is in a different row
3. There are column headings in the file and they are human readable
4. This data is from one table and exists in only one file

In this case, I have chosen to output data that is wide as opposed to making them "long/tall."

For further information on tidy data, the lectures for the "Getting and Cleaning Data" Coursera course can be consulted as well as Hadley Wickham's paper on tidy data:
[Tidy data](http://vita.had.co.nz/papers/tidy-data.pdf)

### Cleaning of Variable Names, etc.

One of the components of tidy data is having human readble, descriptive column headings.  Additionally, we want to prevent illegal names in R.  The Coursera Course had mentioned making the names lowercase, removing whitespace, dots (periods) and underscores.  The [Google R style guide](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml#identifiers) generally agreed, but did permit camel case for readability and also suggested separating words with dots.  Since this is a Coursera Course, I chose to follow the guidelines provided by the present course.  As such, I peformed the following transformations of the column headings:

1. All names have been made lower case
2. All underscores have been removed
3. All whitespace has been removed
4. All hyphens have been removed
5. All parentheses have been removed

To aid in the readability of the column headings, I made the following transformations:

1. t was changed to time
2. f was changed to frequency
3. Acc was changed to acceleration
4. Gyro was changed to gyroscope
5. Mag was changed to magnitude
6. Several of the provided labels had the word "Body" repeated.  I changed these instances to "body"

Although it may not be strictly required, I also cleaned the activity names by making them lowercase and removing underscores.

I checked te readability of the data in general by the following R code:
data <- read.table("TidyData.txt", header = TRUE)
View(data)

### Code Book

A code book containing a description of the variables exists within the github repository and is called "CodeBook.md".

### Data Validation

In an attempt to verify that the means of the final tidy data were correctly calculated, I did some checking by subsetting a relevant column for various subjects and activities out of the data frame that was created after extracting all of the mean() and std() columns from the original data set.  I then took the mean of the result and compared it to the corresponding data in the tidy data.  For example:

test2 <- meanstd[meanstd$subject==1 & meanstd$activity=="walking",colnames(meanstd)[2]]
mean(test2)
head(tidydata, n= 12)

I randomly sample various subjects and activities and confirmed that the means matched.
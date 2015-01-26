##Read in the train data
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainlbls <- read.table("./UCI HAR Dataset/train/y_train.txt")

##Merge the train data
mtrain <- cbind(train,subtrain,trainlbls)

##Read in the test data\
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testlbls <- read.table("./UCI HAR Dataset/test/y_test.txt")

##Merge the test data
mtest <- cbind(test, subtest, testlbls)

##Merge the train and test data
mtt <- rbind(mtrain, mtest)

##Read in the column names
features <- read.table("./UCI HAR Dataset/features.txt")

##Rename the columns of the merged train and test data
names(mtt) <- c(as.character(features$V2),"subject","activity")

##Subset only the mean and std dev columns
meanstd <- mtt[,grep("std\\()|mean\\()|subject|activity", names(mtt), value = TRUE)]

##Read in the activity labels
actlbls <- read.table("./UCI HAR Dataset/activity_labels.txt")

##Clean up the activity labels by making them lower case and removing underscores
actlbls$V2 <- tolower(actlbls$V2)
actlbls$V2 <- gsub("_","",actlbls$V2)

##Update activity to descriptive names from the numbers that originally existed
meanstd$activity <- actlbls$V2[meanstd$activity]

##Clean variable names.  Start by getting the current names and then substitute in the desired characters
newnames <- names(meanstd)

##Use fixed = TRUE for parentheses to tell the function that the parentheses are a string and not special characters to be matched
newnames <- gsub("()","",newnames, fixed = TRUE)
newnames <- gsub("-","",newnames)
newnames <- gsub("BodyBody","Body",newnames)
newnames <- gsub("tBody","timeBody",newnames)
newnames <- gsub("tGravity","timeGravity",newnames)
newnames <- gsub("Mag","magnitude",newnames)
newnames <- gsub("fBody","frequencyBody",newnames)
newnames <- gsub("Gyro","gyroscope",newnames)
newnames <- gsub("Acc","acceleration",newnames)
newnames <- tolower(newnames)

names(meanstd) <- newnames

##plyr package is required in order to use ddply
library(plyr)

##Take mean of each variable for each activity and each subject
tidydata <- ddply(meanstd, .(subject, activity), colwise(mean, c(1:66)))

##Write the tidy data to a file
write.table(tidydata, "TidyData.txt", row.names = FALSE)
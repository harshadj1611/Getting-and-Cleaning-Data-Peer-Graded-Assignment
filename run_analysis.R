##Loading necessary packages
library(dplyr)
library(car)

##Reading train data
train_X_train <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/train/X_train.txt")
train_y_train <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/train/y_train.txt")
train_subject_train <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/train/subject_train.txt")

##Reading test data
test_X_test <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/test/X_test.txt")
test_y_test <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/test/y_test.txt")
test_subject_test <-read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/test/subject_test.txt")

##Reading features
features <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/features.txt")

##Reading activity labels
labels <- read.table("M:/Harshad R/R Course3_Getting and Cleaning Data/Project/UCI HAR Dataset/activity_labels.txt")

##Naming columns
colnames(labels) <- c("activityId", "activities")

colnames(features) <- c("featuresId", "features")

colnames(train_X_train) <- features$features
colnames(train_y_train) <- c("activityId")
colnames(train_subject_train) <- c("subjectId")

colnames(test_X_test) <- features[,2]
colnames(test_y_test) <-c("activityId")
colnames(test_subject_test) <-c("subjectId")

##Merging datasets

merge_train <- cbind(train_subject_train, train_y_train, train_X_train )
merge_test <- cbind(test_subject_test, test_y_test, test_X_test)

##Final dataset
merge_train_test <- rbind(merge_train, merge_test)

##Extracting measurements with mean and std

tidyset <- merge_train_test %>% select(subjectId, activityId , contains("mean"), contains("std"))

##Renaming activities

tidyset <- mutate(tidyset, activityId = recode(activityId, "'1'='WALKING'; '2'= 'WALKING_UPSTAIRS'; '3'='WALKING_DOWNSTAIRS';
                              '4'='SITTING'; '5'='STANDING'; '6'= 'LAYING'"))


## Descriptive variable names

colnames(tidyset) <- gsub("Acc", "Accelerator", colnames(tidyset))
colnames(tidyset) <- gsub("Gyro", "Gyroscope", colnames(tidyset))
colnames(tidyset) <- gsub("Mag", "Magnitude", colnames(tidyset))
colnames(tidyset) <- gsub("Freq", "Frequency", colnames(tidyset))
colnames(tidyset) <- gsub("-mean", "Mean", colnames(tidyset))
colnames(tidyset) <- gsub("-std", "Standard Deviation", colnames(tidyset))
colnames(tidyset) <- gsub("BodyBody", "Body", colnames(tidyset))

##Creating final dataset

tidyset_2 <- tidyset %>% group_by(subjectId, activityId) %>% summarise_all(funs(mean))

write.table(tidyset_2, file = "tidyset_2.txt", row.names = F)

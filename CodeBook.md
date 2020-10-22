# CODE BOOK 
This code book contains the description of variables, the data and the transformations that were made to create **tidyset_2.txt**.

The link from where the data was obtained is given below
[Link to download the dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Description of variables:
* subjectId : Unique Id's provided to 30 participants. 
* activityId : Unique Id's provided to 6 activities as follows:
  + 1 WALKING
  + 2 WALKING_UPSTAIRS
  + 3 WALKING_DOWNSTAIRS
  + 4 SITTING
  + 5 STANDING
  + 6 LAYING

* train_X_train : reads from the **X_train.txt** , which contains 7352 observations of 561 variables.
* train_y_train : reads from the **y_train.txt** , which contains 7352 observations of 1 variable (activityId).
* train_subject_train : reads from the **subject_train.txt** , which contains 7352 observations of 1 variable (subjectId).

* test_X_test : reads from the **X_test.txt** , which contains 2947 observations of 561 variables.
* test_y_test : reads from the **y_test.txt** , which contains 2947 observations of 1 variable (activityId).
* test_subject_test : reads from the **subject_test.txt** , which contains 2947 observations of 1 variable (subjectId).

* features : reads from the **features.txt**.
* labels : reads from the **activity_labels.txt**.

* merge_train : combines train_subject_train, train_y_train, train_X_train using cbind().
* merge_test : combines test_subject_test, test_y_test, test_X_test using cbind()
* merge_train_test : combines merge_train, merge_test using rbind()

* tidyset : Extracts only the measurements on the mean and standard deviation for each measurement.
* tidyset_2 : Independent tidy data set with the average of each variable for each activity and each subject.

# Measurements present in **tidyset_2** 

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


Where, Std indicates standard deviation,  
t indicates time,    
Acc indicates accelerator,    
Gyro indicates gyroscope,    
Freq indicates frequency,      
Mag indicates magnitude.

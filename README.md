# Getting-and-Cleaning-Data-Peer-Graded-Assignment
### DATASET: Human Activity Recognition Using Smartphones 
### DATASET INFORMATION:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
### FILES:
This repo contains four files:
1.	README.md: The document you are reading now.
2.	CodeBook.md: Describes how to use all the, variables, the data, and any transformations or work that was performed to clean up the data.
3.	run_analysis.R: Performs the 5 steps that were mentioned in the course project instructions.
       + Merges the training and the test sets to create one data set.
       + Extracts only the measurements on the mean and standard deviation for each measurement.
       +	Uses descriptive activity names to name the activities in the data set.
       +	Appropriately labels the data set with descriptive variable names.
       + From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
4. tidyset_2: Independent tidy data set with the average of each variable for each activity and each subject.       

#### Link to the description of the course project by coursera given below
[Total description of Getting and Cleaning of Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

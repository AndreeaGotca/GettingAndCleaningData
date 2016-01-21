#Codebook

Author: [Andreea Gotca][3]

```
## [1] "Fri Jan 22 00:21:53 2016"
```

##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Source of the original data [here][1]

Full Description at the site where the data was obtained [here][2]

##Files in folder 'UCI HAR Dataset' that are used:

1. Subject Files
  * test/subject_test.txt
  * train/subject_train.txt
2. Activity files
  * test/X_test.txt
  * train/X_train.txt
3. Data files
  * test/y_test.txt
  * train/y_train.txt
4. features.txt - Names of column variables in the dataTable
5. activity_labels.txt - Links the class labels with their activity name.

##Variable Descriptions

|Variable                  |Description                                                                  |
|:-------------------------|:----------------------------------------------------------------------------|
|activities                |The activity performed                                                       |
|subject                   |Subject ID                                                                   |
|tbodyacc-mean-x           |Mean time for acceleration of body for X direction                           |
|tbodyacc-mean-y           |Mean time for acceleration of body for Y direction                           |
|tbodyacc-mean-z           |Mean time for acceleration of body for Z direction                           |
|tbodyacc-std-x            |Standard deviation of time for acceleration of body for X direction          |
|tbodyacc-std-y            |Standard deviation of time for acceleration of body for Y direction          |
|tbodyacc-std-z            |Standard deviation of time for acceleration of body for Z direction          |
|tgravityacc-mean-x        |Mean time of acceleration of gravity for X direction                         |
|tgravityacc-mean-y        |Mean time of acceleration of gravity for Y direction                         |
|tgravityacc-mean-z        |Mean time of acceleration of gravity for Z direction                         |
|tgravityacc-std-x         |Standard deviation of time of acceleration of gravity for X direction        |
|tgravityacc-std-y         |Standard deviation of time of acceleration of gravity for Y direction        |
|tgravityacc-std-z         |Standard deviation of time of acceleration of gravity for Z direction        |
|tbodyaccjerk-mean-x       |Mean time of body acceleration jerk for X direction                          |
|tbodyaccjerk-mean-y       |Mean time of body acceleration jerk for Y direction                          |
|tbodyaccjerk-mean-z       |Mean time of body acceleration jerk for Z direction                          |
|tbodyaccjerk-std-x        |Standard deviation of time of body acceleration jerk for X direction         |
|tbodyaccjerk-std-y        |Standard deviation of time of body acceleration jerk for Y direction         |
|tbodyaccjerk-std-z        |Standard deviation of time of body acceleration jerk for Z direction         |
|tbodygyro-mean-x          |Mean body gyroscope measurement for X direction                              |
|tbodygyro-mean-y          |Mean body gyroscope measurement for Y direction                              |
|tbodygyro-mean-z          |Mean body gyroscope measurement for Z direction                              |
|tbodygyro-std-x           |Standard deviation of body gyroscope measurement for X direction             |
|tbodygyro-std-y           |Standard deviation of body gyroscope measurement for Y direction             |
|tbodygyro-std-z           |Standard deviation of body gyroscope measurement for Z direction             |
|tbodygyrojerk-mean-x      |Mean jerk signal of body for X direction                                     |
|tbodygyrojerk-mean-y      |Mean jerk signal of body for Y direction                                     |
|tbodygyrojerk-mean-z      |Mean jerk signal of body for Z direction                                     |
|tbodygyrojerk-std-x       |Standard deviation of jerk signal of body for X direction                    |
|tbodygyrojerk-std-y       |Standard deviation of jerk signal of body for Y direction                    |
|tbodygyrojerk-std-z       |Standard deviation of jerk signal of body for Z direction                    |
|tbodyaccmag-mean          |Mean magnitude of body Acc                                                   |
|tbodyaccmag-std           |Standard deviation of magnitude of body Acc                                  |
|tgravityaccmag-mean       |Mean gravity acceleration magnitude                                          |
|tgravityaccmag-std        |Standard deviation of gravity acceleration magnitude                         |
|tbodyaccjerkmag-mean      |Mean magnitude of body acceleration jerk                                     |
|tbodyaccjerkmag-std       |Standard deviation of magnitude of body acceleration jerk                    |
|tbodygyromag-mean         |Mean magnitude of body gyroscope measurement                                 |
|tbodygyromag-std          |Standard deviation of magnitude of body gyroscope measurement                |
|tbodygyrojerkmag-mean     |Mean magnitude of body body gyroscope jerk measurement                       |
|tbodygyrojerkmag-std      |Standard deviation of magnitude of body body gyroscope jerk measurement      |
|fbodyacc-mean-x           |Mean frequency of body acceleration for X direction                          |
|fbodyacc-mean-y           |Mean frequency of body acceleration for Y direction                          |
|fbodyacc-mean-z           |Mean frequency of body acceleration for Z direction                          |
|fbodyacc-std-x            |Standard deviation of frequency of body acceleration for X direction         |
|fbodyacc-std-y            |Standard deviation of frequency of body acceleration for Y direction         |
|fbodyacc-std-z            |Standard deviation of frequency of body acceleration for Z direction         |
|fbodyaccjerk-mean-x       |Mean frequency of body accerlation jerk for X direction                      |
|fbodyaccjerk-mean-y       |Mean frequency of body accerlation jerk for Y direction                      |
|fbodyaccjerk-mean-z       |Mean frequency of body accerlation jerk for Z direction                      |
|fbodyaccjerk-std-x        |Standard deviation frequency of body accerlation jerk for X direction        |
|fbodyaccjerk-std-y        |Standard deviation frequency of body accerlation jerk for Y direction        |
|fbodyaccjerk-std-z        |Standard deviation frequency of body accerlation jerk for Z direction        |
|fbodygyro-mean-x          |Mean frequency of body gyroscope measurement for X direction                 |
|fbodygyro-mean-y          |Mean frequency of body gyroscope measurement for Y direction                 |
|fbodygyro-mean-z          |Mean frequency of body gyroscope measurement for Z direction                 |
|fbodygyro-std-x           |Standard deviation frequency of body gyroscope measurement for X direction   |
|fbodygyro-std-y           |Standard deviation frequency of body gyroscope measurement for Y direction   |
|fbodygyro-std-z           |Standard deviation frequency of body gyroscope measurement for Z direction   |
|fbodyaccmag-mean          |Mean frequency of body acceleration magnitude                                |
|fbodyaccmag-std           |Standard deviation of frequency of body acceleration magnitude               |
|fbodybodyaccjerkmag-mean  |Mean frequency of body acceleration jerk magnitude                           |
|fbodybodyaccjerkmag-std   |Standard deviation of frequency of body acceleration jerk magnitude          |
|fbodybodygyromag-mean     |Mean frequency of magnitude of body gyroscope measurement                    |
|fbodybodygyromag-std      |Standard deviation of frequency of magnitude of body gyroscope measurement   |
|fbodybodygyrojerkmag-mean |Mean frequency of magnitude of body gyroscope jerk measurement               |
|fbodybodygyrojerkmag-std  |Standard deviation frequency of magnitude of body gyroscope jerk measurement |


##Process

The script `run_analysis.R` performs the following process to clean up the data and create a tidy data set:

1. installs and requires needed libraries
2. saves your working directory path in as a string
3. downloads, unzips the folder and sets it as your working directory 
4. reads the train and test files from the train and test folders (data in Inertial Signals folder is not necessary)
5. defines and assigns descriptive names for the features
6. merges the test and train datasets and removes the duplicated columns
7. reads text file with the activity labels and assign column names
8. selects only features that contain mean() or std()
9. calculates the average for mean() and std() features, for each activity and each subject
10. writes the output in text file 




#Dimensions of output data set

```r
dim(averaged_data)
```

```
## [1] 180  68
```

#Print of output data set

```r
tbl_df(averaged_data)
```

```
## Source: local data frame [180 x 68]
## 
##    activityLabel subject TimeDomain.BodyAcceleration-mean()-X
##            (chr)   (int)                                (dbl)
## 1         LAYING       1                            0.2215982
## 2         LAYING       2                            0.2813734
## 3         LAYING       3                            0.2755169
## 4         LAYING       4                            0.2635592
## 5         LAYING       5                            0.2783343
## 6         LAYING       6                            0.2486565
## 7         LAYING       7                            0.2501767
## 8         LAYING       8                            0.2612543
## 9         LAYING       9                            0.2591955
## 10        LAYING      10                            0.2802306
## ..           ...     ...                                  ...
## Variables not shown: TimeDomain.BodyAcceleration-mean()-Y (dbl),
##   TimeDomain.BodyAcceleration-mean()-Z (dbl),
##   TimeDomain.GravityAcceleration-mean()-X (dbl),
##   TimeDomain.GravityAcceleration-mean()-Y (dbl),
##   TimeDomain.GravityAcceleration-mean()-Z (dbl),
##   TimeDomain.BodyAccelerationJerk-mean()-X (dbl),
##   TimeDomain.BodyAccelerationJerk-mean()-Y (dbl),
##   TimeDomain.BodyAccelerationJerk-mean()-Z (dbl),
##   TimeDomain.BodyAngularSpeed-mean()-X (dbl),
##   TimeDomain.BodyAngularSpeed-mean()-Y (dbl),
##   TimeDomain.BodyAngularSpeed-mean()-Z (dbl),
##   TimeDomain.BodyAngularAcceleration-mean()-X (dbl),
##   TimeDomain.BodyAngularAcceleration-mean()-Y (dbl),
##   TimeDomain.BodyAngularAcceleration-mean()-Z (dbl),
##   TimeDomain.BodyAccelerationMagnitude-mean() (dbl),
##   TimeDomain.GravityAccelerationMagnitude-mean() (dbl),
##   TimeDomain.BodyAccelerationJerkMagnitude-mean() (dbl),
##   TimeDomain.BodyAngularSpeedMagnitude-mean() (dbl),
##   TimeDomain.BodyAngularAccelerationMagnitude-mean() (dbl),
##   FrequencyDomain.BodyAcceleration-mean()-X (dbl),
##   FrequencyDomain.BodyAcceleration-mean()-Y (dbl),
##   FrequencyDomain.BodyAcceleration-mean()-Z (dbl),
##   FrequencyDomain.BodyAccelerationJerk-mean()-X (dbl),
##   FrequencyDomain.BodyAccelerationJerk-mean()-Y (dbl),
##   FrequencyDomain.BodyAccelerationJerk-mean()-Z (dbl),
##   FrequencyDomain.BodyAngularSpeed-mean()-X (dbl),
##   FrequencyDomain.BodyAngularSpeed-mean()-Y (dbl),
##   FrequencyDomain.BodyAngularSpeed-mean()-Z (dbl),
##   FrequencyDomain.BodyAccelerationMagnitude-mean() (dbl),
##   FrequencyDomain.BodyBodyAccelerationJerkMagnitude-mean() (dbl),
##   FrequencyDomain.BodyBodyAngularSpeedMagnitude-mean() (dbl),
##   FrequencyDomain.BodyBodyAngularAccelerationMagnitude-mean() (dbl),
##   TimeDomain.BodyAcceleration-std()-X (dbl),
##   TimeDomain.BodyAcceleration-std()-Y (dbl),
##   TimeDomain.BodyAcceleration-std()-Z (dbl),
##   TimeDomain.GravityAcceleration-std()-X (dbl),
##   TimeDomain.GravityAcceleration-std()-Y (dbl),
##   TimeDomain.GravityAcceleration-std()-Z (dbl),
##   TimeDomain.BodyAccelerationJerk-std()-X (dbl),
##   TimeDomain.BodyAccelerationJerk-std()-Y (dbl),
##   TimeDomain.BodyAccelerationJerk-std()-Z (dbl),
##   TimeDomain.BodyAngularSpeed-std()-X (dbl),
##   TimeDomain.BodyAngularSpeed-std()-Y (dbl),
##   TimeDomain.BodyAngularSpeed-std()-Z (dbl),
##   TimeDomain.BodyAngularAcceleration-std()-X (dbl),
##   TimeDomain.BodyAngularAcceleration-std()-Y (dbl),
##   TimeDomain.BodyAngularAcceleration-std()-Z (dbl),
##   TimeDomain.BodyAccelerationMagnitude-std() (dbl),
##   TimeDomain.GravityAccelerationMagnitude-std() (dbl),
##   TimeDomain.BodyAccelerationJerkMagnitude-std() (dbl),
##   TimeDomain.BodyAngularSpeedMagnitude-std() (dbl),
##   TimeDomain.BodyAngularAccelerationMagnitude-std() (dbl),
##   FrequencyDomain.BodyAcceleration-std()-X (dbl),
##   FrequencyDomain.BodyAcceleration-std()-Y (dbl),
##   FrequencyDomain.BodyAcceleration-std()-Z (dbl),
##   FrequencyDomain.BodyAccelerationJerk-std()-X (dbl),
##   FrequencyDomain.BodyAccelerationJerk-std()-Y (dbl),
##   FrequencyDomain.BodyAccelerationJerk-std()-Z (dbl),
##   FrequencyDomain.BodyAngularSpeed-std()-X (dbl),
##   FrequencyDomain.BodyAngularSpeed-std()-Y (dbl),
##   FrequencyDomain.BodyAngularSpeed-std()-Z (dbl),
##   FrequencyDomain.BodyAccelerationMagnitude-std() (dbl),
##   FrequencyDomain.BodyBodyAccelerationJerkMagnitude-std() (dbl),
##   FrequencyDomain.BodyBodyAngularSpeedMagnitude-std() (dbl),
##   FrequencyDomain.BodyBodyAngularAccelerationMagnitude-std() (dbl)
```


[3]: https://github.com/AndreeaGotca
[1]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
[2]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

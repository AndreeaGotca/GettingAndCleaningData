#Codebook

Author: [Andreea Gotca][3]
```{r,echo=F}
date()
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
```{r ktable,echo=F, message=FALSE, warning=FALSE}
library(knitr)
kable(read.csv("D:/Rfiles/variable_desc.csv"))

```

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


```{r, include=FALSE}
source("D:/Rfiles/run_analysis2.R")
```

#Dimensions of output data set
```{r}
dim(averaged_data)
```

#Print of output data set
```{r}
tbl_df(averaged_data)
```


[3]: https://github.com/AndreeaGotca
[1]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
[2]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#Codebook

##Andreea Gotca
```{r,echo=F}
date()
``` 

##Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Source of the original data [here][1]

Full Description at the site where the data was obtained [here][2]

##Files in folder ‘UCI HAR Dataset’ that are used:

1. SUBJECT FILES
  * test/subject_test.txt
  * train/subject_train.txt
2. ACTIVITY FILES
  * test/X_test.txt
  * train/X_train.txt
3. DATA FILES
  * test/y_test.txt
  * train/y_train.txt
4. features.txt - Names of column variables in the dataTable
5. activity_labels.txt - Links the class labels with their activity name.

##Process

The script `run_analysis.R` performs the following process to clean up the data and create a tidy data set:

1. Merges the **training** and **test** sets to create one data set.
2. Reads `features.txt` and uses only the measurements on the **mean** and **standard deviation** for each measurement.
3. Reads `activity_labels.txt` and applies human readable activity names to name the activities in the data set.
4. Labels the data set with descriptive name
5. Merges the features with activity labels and subject IDs.
6. The average of each measurement for each activity and each subject is summarized to a second data set. The result is saved as `tidydata.txt`.

```{r, include=FALSE}
library(downloader)
library(dplyr)
library(tidyr)
library(data.table)

# save your working directory path in as a string
path <- getwd()

# download data set in your working directory and unzip the folder
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(url, dest=file.path(path,"dataset.zip"), mode="wb") 
unzip(file.path(path,"dataset.zip"))

# set the unziped folder as your working directory 
if(file.exists("UCI HAR Dataset")) {
setwd(file.path(path,"UCI HAR Dataset")) }

# read the text files from the train folder
# set header only for subject_train and Y_train tables
# data in Inertial Signals folder is not necessary
train_s <- read.table("./train/subject_train.txt",col.names = c("subject"))
train_x <- read.table("./train/X_train.txt")
train_y <- read.table("./train/Y_train.txt",col.names = c("y"))

# read the features text file and keep only the second column, with the feature names
features <- fread("./features.txt") %>% select(-1)
features <- features$V2

# define descriptive names for variables
features <- gsub('Acc',"Acceleration",features)
features <- gsub('GyroJerk',"AngularAcceleration",features)
features <- gsub('Gyro',"AngularSpeed",features)
features <- gsub('Mag',"Magnitude",features)
features <- gsub('^t',"TimeDomain.",features)
features <- gsub('^f',"FrequencyDomain.",features)
features <- gsub('\\.mean',".Mean",features)
features <- gsub('\\.std',".StandardDeviation",features)
features <- gsub('Freq\\.',"Frequency.",features)
features <- gsub('Freq$',"Frequency",features)

# assign the 561 features descriptive names to the 561 columns of train_x
colnames(train_x) <- as.vector(features)

#bind the columns of the three training tables into one table 
train_data <- bind_cols(train_s,train_x,train_y)

# read the text files from the test folder
# set header only for subject_test and Y_test tables
# data in Inertial Signals folder is not necessary
test_s <- read.table("./test/subject_test.txt",col.names = c("subject"))
test_x <- read.table("./test/X_test.txt")
test_y <- read.table("./test/Y_test.txt",col.names = c("y"))

# assign the 561 features descriptive names to the 561 columns of test_x
colnames(test_x) <- features

#bind the columns of the three training tables into one table 
test_data <- bind_cols(test_s,test_x,test_y) 

# merge the test and train datasets
# bind_rows() from dplyr removes the 84 duplicated columns
# dim(merged_data)
# [1] 10299   479
full_set <- bind_rows(train_data,test_data) 

# read text file with the activity labels and assign column names
activity_labels <- fread("./activity_labels.txt") 
colnames(activity_labels) <- c("y","activityLabel")

# distribute activity lables across all rows using "y" as key and merging the two tables
# select subject & activity columns, together with all features that contain mean() or std()
# dim(merged_data)
# [1] 10299    68
merged_data <-  full_set  %>% merge(activity_labels,by.x="y",by.y="y") %>%
                select(subject,activityLabel,contains("mean()"),contains("std()")) 

# group rows in the merged set created above by activityLabel & subject
# calculate the average for remaining mean() and std() features, for each activity and each subject
# dim(averaged_data)
# [1] 180  68
averaged_data <- merged_data %>%
                 group_by(activityLabel,subject) %>% 
                 summarise_each(funs(mean))
```

#Dimensions of output data set
```{r}
dim(averaged_data)
```

#Print of output data set
```{r}
tbl_df(averaged_data)
```

#Summary of output data set
```{r}
summary(averaged_data)
```

##tidydata.txt

`tidydata.txt` is a 180x68 data frame saved as a text file.

The first column contains activity names.

The second column contains subject IDs.

The averages for each of the 66 attributes are in columns 3-68.

[1]:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
[2]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# install and require needed libraries
install.packages("downloader")
install.packages("dplyr")
install.packages("tidyr")
install.packages("data.table")
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

# write the output in text file 
write.table(averaged_data, file = "tidydata.txt",row.name=FALSE)

#Getting and Cleaning Data Course Project

Author: [Andreea Gotca][1]

##Overview
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

[Here][2] are the data for the project:

You should create one R script called run_analysis.R that does the following.

##Objectives
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##My analysis
I have submitted one script file names *run_analysis.R* , which will produce the requested output. The script was written on Windows 64x, with R version 3.2.2. Open the script and run it into R.

`run_analysis.R`

1. installs and requires needed libraries
2. saves your working directory path in as a string
3. downloads, unzips the folder and sets it as your working directory 
4. reads the train and test files from the train and test folders
5. data in Inertial Signals folder is not necessary
6. defines and assigns descriptive names for the features
7. merges the test and train datasets and removes the duplicated columns
8. reads text file with the activity labels and assign column names
9. selects only features that contain mean() or std()
10. calculates the average for mean() and std() features, for each activity and each subject
11. writes the output in text file 

##Output
Tidy dataset file *tidydata.txt*

[1]: https://github.com/AndreeaGotca/GettingAndCleaningData
[2]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
</markdown></p>
#Getting and Cleaning Data Course Project

Author: [Andreea Gotca][1]

##Overview
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

[Here][2] are the data for the project.

You should create one R script called run_analysis.R that does the following.

##Objectives
1. Merges the **training** and **test** sets to create one data set.
2. Reads `features.txt` and uses only the measurements on the **mean** and **standard deviation** for each measurement.
3. Reads `activity_labels.txt` and applies human readable activity names to name the activities in the data set.
4. Labels the data set with descriptive name
5. Merges the features with activity labels and subject IDs.
6. The average of each measurement for each activity and each subject is summarized to a second data set. The result is saved as `tidydata.txt`.

##My analysis
I have submitted one script file named *run_analysis.R* , which will produce the requested output. The script was written on Windows 64x, with R version 3.2.2. Open the script and run it into R.


##Output
Tidy dataset file *tidydata.txt* is a 180x68 data frame saved as a text file.

The first column contains activity names.

The second column contains subject IDs.

The averages for each of the 66 attributes are in columns 3-68.

[1]: https://github.com/AndreeaGotca
[2]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
</markdown></p>

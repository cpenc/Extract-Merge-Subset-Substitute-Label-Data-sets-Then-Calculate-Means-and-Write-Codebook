# Getting-and-Cleaning-Data-Course-Project
Final assignment for Getting and Cleaning Data - Course Project

## What this readme is all about: 
This readme file only contains details on what is included in the repo and how each of the files are linked with each other.

So it included 3 files
1. This readme.md
2. The code for the final assignment of Getting-and-Cleaning-Data-Course-Project
3. A codebook that explains:
  * Everything about the data used of this project
  * Everything about the data generate out of this assignment

Note about the code book: 
1) As the data for this project is used from a external source, a reference is mentioned to the actual source, if you need to know anything about the source please visit the reference and you should find everything there
2) As we generate a new tidy data in this assignment out of the actual data, the code book focuses more on this new tidy data and its variables


## What does the code for this assignment do:
Detailed comments are mentioned the code explaining what each line of code does. Please refer to comments in the code to understand code if any code is not understandable in run_analysis.R

But in short this is what the code does:
 1. The code needs to have dplyr and tidyr packages installed in R before running the code. install them if you don't already have them!
 2. Download the data that is used in this project from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 3. Unzip the downloaded file. The unzip should have "UCI HAR Dataset" folder.
 4. "UCI HAR Dataset" folder have all folders(test and train) and files required for this project.
 5. In R, set working directory as "UCI HAR Dataset" directory if you want to run "run_analysis.R" code
 6. Also save run_analysis.R code file into "UCI HAR Dataset" directory
 7. From R or RStudio, after setting working directory as "UCI HAR Dataset" and after having dplyr and tidyr packages installed, run "source("run_analysis.R") to execute the code and geenereate the new tidy data as requested in the assignment
 8. So run_analysis.R will do the following:
    * Merges the training and the test sets to create one data set.
    * Extracts only the measurements on the mean and standard deviation for each measurement.
    * Uses descriptive activity names to name the activities in the data set
    * Appropriately labels the data set with descriptive variable names.
    * From the data set in step e, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 9. The run_analysis.R code will generate 1 output file, "FinalTidyDataSet.txt"
10. FinalTidyDataSet.txt will have the tidy data requested in the assignment


#If you intend to run and test this script:
#You need to have installed dplyr and tidyr packages
#Run this script in the director "UCI HAR Dataset"
#to run just set working director as "UCI HAR Dataset" directory and source("run_analysis.R")


#loading the required libraries
library(dplyr)
library(tidyr)

#Assuming the code will be run from "UCI HAR Dataset" directory 
#store directory paths in variable to access test and train directories via these variables
test_data_dir="test/"
train_data_dir="train/"

#read and load all test data files into R
X_test<-read.table(paste(test_data_dir,"X_test.txt",sep = ""),header = FALSE)
y_test<-read.table(paste(test_data_dir,"y_test.txt",sep = ""),header = FALSE)
subject_test<-read.table(paste(test_data_dir,"subject_test.txt",sep = ""),header = FALSE)

#read and load all train data files into R
X_train<-read.table(paste(train_data_dir,"X_train.txt",sep = ""),header = FALSE)
y_train<-read.table(paste(train_data_dir,"y_train.txt",sep = ""),header = FALSE)
subject_train<-read.table(paste(train_data_dir,"subject_train.txt",sep = ""),header = FALSE)

#read and load the features file into R
features<-read.table("features.txt",header = FALSE)

#read and load the activity_labels file into R
activity_labels<-read.table("activity_labels.txt",header = FALSE)

#row bind or join test and train X,y and subject data together by rows
X_total<-rbind(X_test,X_train)
y_total<-rbind(y_test,y_train)
subject_total<-rbind(subject_test,subject_train)

#name columns of all the total data frames:
#X_total data frame contains all the 561 variables so name their columns from features data frame
names(X_total)<-tolower(features[,2])
#y_total data frame contains only the activity_code so name the column as activity_code for ease
names(y_total)<-"activity_code"
#subject_total data frame contains only the subjects(range 1 to 30) so name column as subject
names(subject_total)<-"subject"
#activity_labels data frame contains 2 columns activity_code and activity_labels so as below:
names(activity_labels)<-c("activity_code","activity_label")

#club all the 561 variables, subject and activity_code together to form 1 single data set
OneDataSet<-cbind(subject_total,y_total,X_total)
#Assignment Step 1 complete!

#Extracts only the measurements on the mean and standard deviation for each measurement.
#a simple grep will help, need to include strings like mean, sub, subject, activity_code
#as we only need those columns as per the assignment question 2
OneNiceDataSet<-tbl_df(OneDataSet[,grep(pattern = 'mean|std|subject|activity_code',
                                   names(OneDataSet),value = TRUE,ignore.case = TRUE)
								 ]
					  ) #<- Assignment Step 2 complete

#Okay, now we need to replace activiiy_codes with activity_labels
#for this we can just inner join on activity_labels data frame to use the
#labels in it. After the inner join, we don't need activity_code column 
#any more, so let us remove it using minus!
OneNiceDataSet<-inner_join(OneNiceDataSet,activity_labels) %>% select(-activity_code)
#Assignment Step 3 complete

#Appropriately labels the data set with descriptive variable names.
#Subsetting the short names with descriptive names and removing unwanted symbols will do!
k<-names(OneNiceDataSet)                            #storing names into k
k<-gsub("freq","_frequency",k)                      #replacing freq with _frequency
k<-gsub("tbody","time_domain_signals_body",k)       #similar for tbody
k<-gsub("fbody","frequency_domain_signals_body",k)  #similar for fbody
k<-gsub("tgravity","time_domain_signals_gravity",k) #similar for tgravity
k<-gsub("acc","_accelerometer_",k)                  #similar for acc
k<-gsub("gyro","_gyroscope_",k)                     #similar for gyro
k<-gsub("mag","_magnitude_",k)                      #similar for mag
k<-gsub("-","_",k)                                  #similar for -
k<-gsub("__","_",k)                                 #similar for __ (2 underscores)
#not removing ( and ) as I don't mind having them in the name. As mean is actually mean()
names(OneNiceDataSet)<-k                            #assign k to names of OneNiceDataSet! done!
#Assignment Step 4 complete


#Independent tidy data set with the average of each variable for each activity and each subject
#so grouping by subject,activity_label then finding their mean
FinalTidyDataSet<-group_by(OneNiceDataSet,subject,activity_label) %>% summarise_each(funs(mean))

#now that we have calculated the means after goruping on subject and activity, let us also 
#also rename the column names so they would make more sense in the FinalTidyDataSet
names(FinalTidyDataSet) <-paste(names(FinalTidyDataSet),"_Mean_Group_By_Subject_Activity",sep="")
colnames(FinalTidyDataSet)[1] <- "subject" #Didn't have to add _Mean_Group_By_Subject_Activity to 1st column
colnames(FinalTidyDataSet)[2] <- "activity_label" #Didn't have to add _Mean_Group_By_Subject_Activity to 2nd column

#writing the grouped means to file.
write.table(FinalTidyDataSet,file = "FinalTidyDataSet.txt",col.names = TRUE,row.names = FALSE,quote = TRUE)
#Assignment Step 5 complete


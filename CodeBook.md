Note:
- First part: This codebook first records information about the source data. (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- Assignment part: Later this code book focuses more on the new tidy data and its variables that were requested as part of final assignment of Getting-and-Cleaning-Data-Course-Project. If you wish you skip directly to this content, go straight to the section "Independent tidy data set with the average of each variable for each activity and each subject"


# First Part:

Human Activity Recognition Using Smartphones Dataset - Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided :
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


# Assignment Part:
## Independent tidy data set with the average of each variable for each activity and each subject:

Please read the readme for this repo to understand how the source data was analyzed using run_analysis.R to create FinalTidyDataSet.txt

The following content explains each variable of FinalTidyDataSet.txt and their units

### Variable names in FinalTidyDataSet.txt:
 [1] "subject"                                                                        
 [2] "activity_label"                                                                 
 [3] "time_domain_signals_body_accelerometer_mean()_x"                                
 [4] "time_domain_signals_body_accelerometer_mean()_y"                                
 [5] "time_domain_signals_body_accelerometer_mean()_z"                                
 [6] "time_domain_signals_body_accelerometer_std()_x"                                 
 [7] "time_domain_signals_body_accelerometer_std()_y"                                 
 [8] "time_domain_signals_body_accelerometer_std()_z"                                 
 [9] "time_domain_signals_gravity_accelerometer_mean()_x"                             
[10] "time_domain_signals_gravity_accelerometer_mean()_y"                             
[11] "time_domain_signals_gravity_accelerometer_mean()_z"                             
[12] "time_domain_signals_gravity_accelerometer_std()_x"                              
[13] "time_domain_signals_gravity_accelerometer_std()_y"                              
[14] "time_domain_signals_gravity_accelerometer_std()_z"                              
[15] "time_domain_signals_body_accelerometer_jerk_mean()_x"                           
[16] "time_domain_signals_body_accelerometer_jerk_mean()_y"                           
[17] "time_domain_signals_body_accelerometer_jerk_mean()_z"                           
[18] "time_domain_signals_body_accelerometer_jerk_std()_x"                            
[19] "time_domain_signals_body_accelerometer_jerk_std()_y"                            
[20] "time_domain_signals_body_accelerometer_jerk_std()_z"                            
[21] "time_domain_signals_body_gyroscope_mean()_x"                                    
[22] "time_domain_signals_body_gyroscope_mean()_y"                                    
[23] "time_domain_signals_body_gyroscope_mean()_z"                                    
[24] "time_domain_signals_body_gyroscope_std()_x"                                     
[25] "time_domain_signals_body_gyroscope_std()_y"                                     
[26] "time_domain_signals_body_gyroscope_std()_z"                                     
[27] "time_domain_signals_body_gyroscope_jerk_mean()_x"                               
[28] "time_domain_signals_body_gyroscope_jerk_mean()_y"                               
[29] "time_domain_signals_body_gyroscope_jerk_mean()_z"                               
[30] "time_domain_signals_body_gyroscope_jerk_std()_x"                                
[31] "time_domain_signals_body_gyroscope_jerk_std()_y"                                
[32] "time_domain_signals_body_gyroscope_jerk_std()_z"                                
[33] "time_domain_signals_body_accelerometer_magnitude_mean()"                        
[34] "time_domain_signals_body_accelerometer_magnitude_std()"                         
[35] "time_domain_signals_gravity_accelerometer_magnitude_mean()"                     
[36] "time_domain_signals_gravity_accelerometer_magnitude_std()"                      
[37] "time_domain_signals_body_accelerometer_jerk_magnitude_mean()"                   
[38] "time_domain_signals_body_accelerometer_jerk_magnitude_std()"                    
[39] "time_domain_signals_body_gyroscope_magnitude_mean()"                            
[40] "time_domain_signals_body_gyroscope_magnitude_std()"                             
[41] "time_domain_signals_body_gyroscope_jerk_magnitude_mean()"                       
[42] "time_domain_signals_body_gyroscope_jerk_magnitude_std()"                        
[43] "frequency_domain_signals_body_accelerometer_mean()_x"                           
[44] "frequency_domain_signals_body_accelerometer_mean()_y"                           
[45] "frequency_domain_signals_body_accelerometer_mean()_z"                           
[46] "frequency_domain_signals_body_accelerometer_std()_x"                            
[47] "frequency_domain_signals_body_accelerometer_std()_y"                            
[48] "frequency_domain_signals_body_accelerometer_std()_z"                            
[49] "frequency_domain_signals_body_accelerometer_mean_frequency()_x"                 
[50] "frequency_domain_signals_body_accelerometer_mean_frequency()_y"                 
[51] "frequency_domain_signals_body_accelerometer_mean_frequency()_z"                 
[52] "frequency_domain_signals_body_accelerometer_jerk_mean()_x"                      
[53] "frequency_domain_signals_body_accelerometer_jerk_mean()_y"                      
[54] "frequency_domain_signals_body_accelerometer_jerk_mean()_z"                      
[55] "frequency_domain_signals_body_accelerometer_jerk_std()_x"                       
[56] "frequency_domain_signals_body_accelerometer_jerk_std()_y"                       
[57] "frequency_domain_signals_body_accelerometer_jerk_std()_z"                       
[58] "frequency_domain_signals_body_accelerometer_jerk_mean_frequency()_x"            
[59] "frequency_domain_signals_body_accelerometer_jerk_mean_frequency()_y"            
[60] "frequency_domain_signals_body_accelerometer_jerk_mean_frequency()_z"            
[61] "frequency_domain_signals_body_gyroscope_mean()_x"                               
[62] "frequency_domain_signals_body_gyroscope_mean()_y"                               
[63] "frequency_domain_signals_body_gyroscope_mean()_z"                               
[64] "frequency_domain_signals_body_gyroscope_std()_x"                                
[65] "frequency_domain_signals_body_gyroscope_std()_y"                                
[66] "frequency_domain_signals_body_gyroscope_std()_z"                                
[67] "frequency_domain_signals_body_gyroscope_mean_frequency()_x"                     
[68] "frequency_domain_signals_body_gyroscope_mean_frequency()_y"                     
[69] "frequency_domain_signals_body_gyroscope_mean_frequency()_z"                     
[70] "frequency_domain_signals_body_accelerometer_magnitude_mean()"                   
[71] "frequency_domain_signals_body_accelerometer_magnitude_std()"                    
[72] "frequency_domain_signals_body_accelerometer_magnitude_mean_frequency()"         
[73] "frequency_domain_signals_bodybody_accelerometer_jerk_magnitude_mean()"          
[74] "frequency_domain_signals_bodybody_accelerometer_jerk_magnitude_std()"           
[75] "frequency_domain_signals_bodybody_accelerometer_jerk_magnitude_mean_frequency()"
[76] "frequency_domain_signals_bodybody_gyroscope_magnitude_mean()"                   
[77] "frequency_domain_signals_bodybody_gyroscope_magnitude_std()"                    
[78] "frequency_domain_signals_bodybody_gyroscope_magnitude_mean_frequency()"         
[79] "frequency_domain_signals_bodybody_gyroscope_jerk_magnitude_mean()"              
[80] "frequency_domain_signals_bodybody_gyroscope_jerk_magnitude_std()"               
[81] "frequency_domain_signals_bodybody_gyroscope_jerk_magnitude_mean_frequency()"    
[82] "angle(time_domain_signals_body_accelerometer_mean,gravity)"                     
[83] "angle(time_domain_signals_body_accelerometer_jerkmean),gravitymean)"            
[84] "angle(time_domain_signals_body_gyroscope_mean,gravitymean)"                     
[85] "angle(time_domain_signals_body_gyroscope_jerkmean,gravitymean)"                 
[86] "angle(x,gravitymean)"                                                           
[87] "angle(y,gravitymean)"                                                           
[88] "angle(z,gravitymean)"          


 
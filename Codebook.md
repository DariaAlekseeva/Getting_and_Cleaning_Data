Working with data

Description of the run_analytics.R process

1. load library(dplyr)
2. load train and test data set into R
3. add new columns with activities and subjects to both data sates seperately
4. merge two data sets
5. add header to merged data set
6. add name to new column with labels
7. select colonm which contains subject, activity, mean and standard deviation
8. add descriptive activity names to name the activities in the data set
9. group by subject and activity
10. find the mean of each variable for each activity of each subject
11. write dataset to text file

Final tidy data in file "tidy.txt" contains 180 rows and 88 columns.
Rows represent one observation of activity for each subject.
There are 30 subjects (1-30) and 6 activities (WALKING, WALKING_UPSTAIRS
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Columns (except subject and activity) represent processed sensory information. Column names are:

 [1] "subject"                              "activity"                            
 [3] "tBodyAcc.mean...X"                    "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                    "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                
 [9] "tBodyAccJerk.mean...X"                "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"                "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"               "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"               "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."                "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                  "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                    "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"                "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"            "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                   "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"               "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                   "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."              "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                 "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                 "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                     "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                  "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                 "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                    "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"                "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                    "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."                "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."               "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                     "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                 "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                    "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                    "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."               "fBodyBodyGyroJerkMag.std.."
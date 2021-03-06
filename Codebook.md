Working with data

Source data set given in the link below: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

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

 "subject" 
 
 "activity"
 
 "tBodyAcc.mean...X"
 
 "tBodyAcc.mean...Y"                   
 
 "tBodyAcc.mean...Z"
 
 "tGravityAcc.mean...X"                
 
 "tGravityAcc.mean...Y"
 
 "tGravityAcc.mean...Z"                
 
 "tBodyAccJerk.mean...X"
 
 "tBodyAccJerk.mean...Y"               
 
 "tBodyAccJerk.mean...Z"
 
 "tBodyGyro.mean...X"                  
 
 "tBodyGyro.mean...Y"
 
 "tBodyGyro.mean...Z"                  
 
 "tBodyGyroJerk.mean...X"
 
 "tBodyGyroJerk.mean...Y"              
 
 "tBodyGyroJerk.mean...Z"
 
 "tBodyAccMag.mean.."                  
 
 "tGravityAccMag.mean.."            
 
 "tBodyAccJerkMag.mean.."              
 
 "tBodyGyroMag.mean.."
 
 "tBodyGyroJerkMag.mean.."             
 
 "fBodyAcc.mean...X" 
 
 "fBodyAcc.mean...Y"     
 
 "fBodyAcc.mean...Z"     
 
 "fBodyAcc.meanFreq...X"               
 
 "fBodyAcc.meanFreq...Y"     
 
 "fBodyAcc.meanFreq...Z"               
 
 "fBodyAccJerk.mean...X"     
 
 "fBodyAccJerk.mean...Y"               
 
 "fBodyAccJerk.mean...Z"   
 
 "fBodyAccJerk.meanFreq...X"           
 
 "fBodyAccJerk.meanFreq...Y"  
 
 "fBodyAccJerk.meanFreq...Z"           
 
 "fBodyGyro.mean...X"        
 
 "fBodyGyro.mean...Y"                  
 
 "fBodyGyro.mean...Z"      
 
 "fBodyGyro.meanFreq...X"              
 
 "fBodyGyro.meanFreq...Y"     
 
 "fBodyGyro.meanFreq...Z"              
 
 "fBodyAccMag.mean.."           
 
 "fBodyAccMag.meanFreq.."              
 
 "fBodyBodyAccJerkMag.mean.."  
 
 "fBodyBodyAccJerkMag.meanFreq.."      
 
 "fBodyBodyGyroMag.mean.."            
 
 "fBodyBodyGyroMag.meanFreq.."         
 
 "fBodyBodyGyroJerkMag.mean.." 
 
 "fBodyBodyGyroJerkMag.meanFreq.."     
 
 "angle.tBodyAccMean.gravity."   
 
 "angle.tBodyAccJerkMean..gravityMean."
 
 "angle.tBodyGyroMean.gravityMean."
 
 "angle.tBodyGyroJerkMean.gravityMean."
 
 "angle.X.gravityMean."   
 
 "angle.Y.gravityMean."                
 
 "angle.Z.gravityMean."            
 
 "tBodyAcc.std...X"                    
 
 "tBodyAcc.std...Y"      
 
 "tBodyAcc.std...Z"                    
 
 "tGravityAcc.std...X"         
 
 "tGravityAcc.std...Y"                 
 
 "tGravityAcc.std...Z"    
 
 "tBodyAccJerk.std...X"                
 
 "tBodyAccJerk.std...Y"     
 
 "tBodyAccJerk.std...Z"                
 
 "tBodyGyro.std...X"    
 
 "tBodyGyro.std...Y"                   
 
 "tBodyGyro.std...Z"     
 
 "tBodyGyroJerk.std...X"               
 
 "tBodyGyroJerk.std...Y"     
 
 "tBodyGyroJerk.std...Z"               
 
 "tBodyAccMag.std.."   
 
 "tGravityAccMag.std.."                
 
 "tBodyAccJerkMag.std.."    
 
 "tBodyGyroMag.std.."                  
 
 "tBodyGyroJerkMag.std.."
 
 "fBodyAcc.std...X"                    
 
 "fBodyAcc.std...Y"       
 
 "fBodyAcc.std...Z"                    
 
 "fBodyAccJerk.std...X"   
 
 "fBodyAccJerk.std...Y"                
 
 "fBodyAccJerk.std...Z"   
 
 "fBodyGyro.std...X"                   
 
 "fBodyGyro.std...Y"       
 
 "fBodyGyro.std...Z"                   
 
 "fBodyAccMag.std.."   
 
 "fBodyBodyAccJerkMag.std.."           
 
 "fBodyBodyGyroMag.std.."
 
 "fBodyBodyGyroJerkMag.std.."

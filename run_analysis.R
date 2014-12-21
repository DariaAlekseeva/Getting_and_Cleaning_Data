library(dplyr)
rm(list=ls())

# load train and test data set into R
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")


test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")


# add new columns with activities and subjects to both data sates seperately
train <- mutate(train, activity = as.vector(y_train$V1), subject = as.vector(subject_train$V1))
test <- mutate(test, activity = as.vector(y_test$V1), subject = as.vector(subject_test$V1))

# merge two data sets
merged <- rbind_list(train, test)

# add header to merged data set
header <- read.table("./UCI HAR Dataset/features.txt")
header <- as.vector(header$V2)
names(merged) <- header
names(merged) <- make.names(names(merged), unique = TRUE)

# add name to new column with labels
colnames(merged)[562] <- "activity"
colnames(merged)[563] <- "subject"

# select colonm which contains subject, activity, mean and standard deviation
data <- select(merged,contains("subject"), contains("activity"), contains("mean"), contains("std"))

# add descriptive activity names to name the activities in the data set
data$activity[data$activity == 1] <- 'WALKING'
data$activity[data$activity == 2] <- 'WALKING_UPSTAIRS'
data$activity[data$activity == 3] <- 'WALKING_DOWNSTAIRS'
data$activity[data$activity == 4] <- 'SITTING'
data$activity[data$activity == 5] <- 'STANDING'
data$activity[data$activity == 6] <- 'LAYING'

# group by subject and activity
by_subject_activity <- group_by(data, subject, activity)

# find the mean of each variable for each activity of each subject
final_tidy_data <- summarise_each(by_subject_activity, funs(mean))

# write dataset to text file
write.table(final_tidy_data, row.names = FALSE, file = './tidy.txt')
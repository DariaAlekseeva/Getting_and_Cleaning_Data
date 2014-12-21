Peer-Assessed Programming Assignment for Getting and Cleaning Data

This repository contains my solution for peer-assessed programming assignment in Getting and Cleaning Data class in Coursera.

run_analysis.R is a script that tidies up and produces aggregate data from two data sets: training data set and test data set.

The training and test sets are merged together, provided with meaningful labels, activity labels are converted into sensible 
names and only the mean and SD observations are retained. New data set is grouped by subject and activity. After that script
 calculates averages for all subject-activity groups, and writes the resultint data set into TXT file in the working directory.

The run_analysis.R script is commented to indicate which parts of the code are responsible for which transformations. 
See CodeBook.md stands for additional information on resulting data sets.
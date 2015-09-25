Course project for Getting and Cleaning Data (Coursera)
========================================================

This project demonstrates how to collect, work with and clean a data set. We work with data collected from the accelerometers from the Samsung Galaxy S smart phone [1]. Data of the project are found at
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Put the script run_analysis.R in this repo into the same unzipped directory as the data of the project. The script will create a tidy data set called "tidydata.txt" following the following steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement, i.e. those feature names that have "mean()" and "std()" as indicated in features.txt .
3. Uses descriptive activity names to name the activities in the data set. We replace the activity numbers (1-6) by the corresponding names found in activity_labels.txt .
4. Appropriately labels the data set with descriptive variable names. We use names from features.txt, but replace "t" and "f" by "Time" and "Freq" (abbreviation for frequency), and remove the unnecessary dashes and round brackets. We also notice that "BodyBody" in the feature names could in fact be typograhical error when compared to other feature names, hence we replace "BodyBody" by "Body".
5. From the data set in step 4, creates a second, independent tidy data set (tidydata.txt) with the average of each variable for each activity and each subject.

The tidy data set can be read into R for inspection with the following lines:
```{r}
chkdf <- read.table(file="tidydata.txt",header=TRUE)
chkdf
```

A code book (Codebook.md) describing the variables in tidydata.txt can be found in this repo.


# Reference
================
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

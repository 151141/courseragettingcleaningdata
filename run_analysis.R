##################
#   STEP 1 & 2   #
##################
# merge columns on features from test and training sets
df1 <- read.table("./test/X_test.txt")
df2 <- read.table("./train/X_train.txt")
feature <- rbind(df1,df2)
dim(feature) # check size of merged data frame

# merge activity labels from test and training sets
df1 <- read.table("./test/y_test.txt")
df2 <- read.table("./train/y_train.txt")
activity <- rbind(df1,df2)
dim(activity)

# merge subject labels from test and training sets
df1 <- read.table("./test/subject_test.txt")
df2 <- read.table("./train/subject_train.txt")
subject <- rbind(df1,df2)
dim(subject)

# check the ranges of subject and activity
table(subject)
table(activity)

# read in the activity labels
activityLabel <- read.table("./activity_labels.txt")

# read in the feature labels
featureLabel <- read.table("./features.txt")

# select only measurements on mean and standard deviation for each measurement
# i.e. feature labels with mean() or std()
# in particular, labels such as the 561th label, angle(Z,gravityMean),
# or the 513th label, fBodyAccMag-meanFreq(),
# are not included because they are neither based on mean() nor std()
indexFeature <- grepl("mean\\(\\)|std\\(\\)",featureLabel[,2])

# double check the feature selected
featureLabel[indexFeature,]

# selected feature
selectedFeature <- feature[,indexFeature]
###########################
# STEP 2 IS NOW COMPLETED #
###########################

# merge all into one data frame
df <- cbind(subject,activity,selectedFeature)
###########################
# STEP 1 IS NOW COMPLETED #
###########################

##############
#   STEP 3   #
##############
# convert activity labels from integer to strings
convertLabel <- function(x){x <- activityLabel[x,2]}
df[,2] <- sapply(df[,2],convertLabel)
###########################
# STEP 3 IS NOW COMPLETED #
###########################

##############
#   STEP 4   #
##############
featureName <- as.character(featureLabel[indexFeature,2])
# replace original feature name by more descriptive name
featureName <- gsub("tBody","TimeBody",featureName)
featureName <- gsub("tGravity","TimeGravity",featureName)
featureName <- gsub("fBody","FreqBody",featureName)
featureName <- gsub("-mean()","Mean",featureName,fixed=TRUE)
featureName <- gsub("-std()","Std",featureName,fixed=TRUE)
featureName <- gsub("-","",featureName,fixed=TRUE)
# for the last 6 feature names, BodyBody should be replaced by Body
# this should be compared with features such as "TimeBodyGyroJerkMagMean"
featureName <- gsub("BodyBody","Body",featureName)

# we add descriptive labels for subject id, activity 
names(df) <- c("Subject","Activity",featureName)
###########################
# STEP 4 IS NOW COMPLETED #
###########################

##############
#   STEP 5   #
##############
# creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
library(reshape2)
md <- melt(df,id=(c("Subject","Activity")))
tidydf <- dcast(md, Subject + Activity ~ variable, mean)

# write the tidy data to file
write.table(tidydf,file="tidydata.txt",row.names = FALSE)

# check if the tidy data can be correctly read in
chkdf <- read.table(file="tidydata.txt",header=TRUE)

###########################
# STEP 5 IS NOW COMPLETED #
###########################
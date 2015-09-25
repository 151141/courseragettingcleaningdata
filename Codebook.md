Study design
==================
This data set contains observations on 30 subjects performing 6 types of activities (laying, sitting, standing, walking, walking downstairs and walking upstairs), hence a total of 180 rows of observations. Features are extracted from the accelerometer and gyroscope 3-axial raw signals TimeAcc-XYZ and TimeGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcc-XYZ and TimeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccJerk-XYZ and TimeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccMag, TimeGravityAccMag, TimeBodyAccJerkMag, TimeBodyGyroMag, TimeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency-domain signals FreqBodyAcc-XYZ, FreqBodyAccJerk-XYZ, FreqBodyGyro-XYZ, FreqBodyAccJerkMag, FreqBodyGyroMag, FreqBodyGyroJerkMag. 

These signals were used to estimate mean and standard deviation of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. These means and standard deviations have been normalised to the range [-1,1], hence they are dimensionless numbers.

Average of these means and standard deviations are subsequently recorded for each subject and each activity in this data set. In total, there are 66 averages for each subject and each activity. These averages are also dimensionless.

The code book
============
The following gives information on each column of the data set.

## 1. Subject
Integer from 1 to 30. Labels of the subjects that took part in the study.

## 2. Activity
Strings. 6 types of activities that subjects have performed: laying, sitting, standing, walking, walking downstairs and walking upstairs.
   
## 3-5. TimeBodyAccMean-XYZ
Floats. Dimensionless. Average of the mean of time-domain body acceleration along X,Y,Z directions.

## 6-8. TimeBodyAccStd-XYZ
Floats. Dimensionless. Average of the standard deviation of time-domain body acceleration along X,Y,Z directions.

## 9-11. TimeGravityAccMean-XYZ
Floats. Dimensionless. Average of the mean of time-domain gravity acceleration along X,Y,Z directions.

## 12-14. TimeGravityAccStd-XYZ
Floats. Dimensionless. Average of the standard deviation of time-domain gravity acceleration along X,Y,Z directions.

## 15-17. TimeBodyAccJerkMean-XYZ
Floats. Dimensionless. Average of the mean of time-domain body jerk signals along X,Y,Z directions.

## 18-20. TimeBodyAccJerkStd-XYZ
Floats. Dimensionless. Average of the standard deviation of time-domain body jerk signals along X,Y,Z directions.

## 21-23. TimeBodyGyroMean-XYZ
Floats. Dimensionless. Average of the mean of time-domain gyroscope signals along X,Y,Z directions.

## 24-26. TimeBodyGyroStd-XYZ
Floats. Dimensionless. Average of the standard deviation of time-domain gyroscope signals along X,Y,Z directions.

## 27-29. TimeBodyGyroJerkMean-XYZ
Floats. Dimensionless. Average of the mean of time-domain gyroscope jerk signals along X,Y,Z directions.

## 30-32. TimeBodyGyroJerkStd-XYZ
Floats. Dimensionless. Average of the standard deviation of time-domain gyroscope jerk signals along X,Y,Z directions.

## 33. TimeBodyAccMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the time-domain body acceleration signals.

## 34. TimeBodyAccMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the time-domain body acceleration signals.

## 35. TimeGravityAccMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the time-domain gravity acceleration signals.

## 36. TimeGravityAccMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the time-domain gravity acceleration signals.

## 37. TimeBodyAccJerkMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the time-domain body jerk signals.

## 38. TimeBodyAccJerkMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the time-domain body jerk signals.

## 39. TimeBodyGyroMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the time-domain gyroscope signals.

## 40. TimeBodyGyroMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the time-domain gyroscope signals.

## 41. TimeBodyGyroJerkMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the time-domain gyroscope jerk signals.

## 42. TimeBodyGyroJerkMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the time-domain gyroscope jerk signals.


## 43-45. FreqBodyAccMean-XYZ
Floats. Dimensionless. Average of the mean of frequency-domain body acceleration along X,Y,Z directions.

## 46-48. FreqBodyAccStd-XYZ
Floats. Dimensionless. Average of the standard deviation of frequency-domain body acceleration along X,Y,Z directions.

## 49-51. FreqBodyAccJerkMean-XYZ
Floats. Dimensionless. Average of the mean of frequency-domain body jerk signals along X,Y,Z directions.

## 52-54. FreqBodyAccJerkStd-XYZ
Floats. Dimensionless. Average of the standard deviation of frequency-domain body jerk signals along X,Y,Z directions.

## 55-57. FreqBodyGyroMean-XYZ
Floats. Dimensionless. Average of the mean of frequency-domain gyroscope signals along X,Y,Z directions.


## 58-60. FreqBodyGyroStd-XYZ
Floats. Dimensionless. Average of the standard deviation of frequency-domain gyroscope signals along X,Y,Z directions.

## 61. FreqBodyAccMagMean
Floats. Dimensionless. Average of the mean of the magnitude of the frequency-domain body acceleration signals.

## 62. FreqBodyAccMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of the frequency-domain body acceleration signals.

## 63. FreqBodyAccJerkMagMean
Floats. Dimensionless. Average of the mean of the magnitude of frequency-domain body jerk signals.

## 64. FreqBodyAccJerkMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of frequency-domain body jerk signals.

## 65. FreqBodyGyroMagMean
Floats. Dimensionless. Average of the mean of the magnitude of frequency-domain gyroscope signals.

## 66. FreqBodyGyroMagStd
Floats. Dimensionless. Average of the standard deviation of the magnitude of frequency-domain gyroscope signals.

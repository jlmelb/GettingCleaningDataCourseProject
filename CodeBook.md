CodeBook for tidy dataset generated from run_analysis.R

activityName
Reference to one of six activities as carried out by subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

subjectID
ID of volunteer carrying out experiment

For each activity and subject, an average was calculated for the following variables:

- Mean of signal
- Standard deviation of signal
- Mean frequency (weighted average of the frequency components)

The three aforementioned variables were collected for the following signals:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions (i.e. where denoted -XYZ, there would be three 
mean measurements, one for each direction)

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

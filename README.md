## About 

This project contains a script for creating a tidy data set from the UCI “Human Activity Recognition Using Smartphones” Data Set. See: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script run_analysis.R should be run in the same directory that contains the UCI HAR data set, which can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## Variables:

- Subject.Id - Numeric identifier of the subject of the experiment.
- Activity.Id - Numeric activity code.
- Activity.Label - Text label that describes the activity. One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

Each observation contains 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz collected from an accelerometer and gyroscope. Time and frequency measurements are stored in these variables:

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyAccMag-mean()
- tGravityAccMag-mean()
- tBodyAccJerkMag-mean()
- tBodyGyroMag-mean()
- tBodyGyroJerkMag-mean()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-meanFreq()-X
- fBodyAcc-meanFreq()-Y
- fBodyAcc-meanFreq()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-meanFreq()-X
- fBodyAccJerk-meanFreq()-Y
- fBodyAccJerk-meanFreq()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-meanFreq()-X
- fBodyGyro-meanFreq()-Y
- fBodyGyro-meanFreq()-Z
- fBodyAccMag-mean()
- fBodyAccMag-meanFreq()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-meanFreq()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-meanFreq()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-meanFreq()
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-std()
- tGravityAccMag-std()
- tBodyAccJerkMag-std()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-std()
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-std()

## How to run 

1. Download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the contents of the zip file.
3. In the same directory, run:
    R -f run_analysis.R

## Output

The output of run_analysis.R is a summary of the mean for each of the domain variables above (fBody…, tBody…, etc), for each unique combination of subject and activity.

There are 180 rows of 82 observations in the final output.

## How the Data was Tidied:

1. Activity labels were loaded from the activity_labels.txt file
2. Features names were loaded form features.txt. These are descriptive names for the triaxial measurements described above.
3. The test and training data sets were loaded.
4. Subject id’s were extracted from the corresponding rows in subject_test.txt and subject_train.txt, respectively, and added to each observation as Subject.Id.
5. Activity id’s were extracted from the corresponding rows in y_test.txt and y_train.txt, and added to each observation as Activity.Id
6. The test and training data were merged.
7. Using the activity id’s, descriptive labels were extracted from activity_labels.txt and added to the merged data as variable “Activity.Label”.
8. The merged data was subsetted to include only the measurements involving the mean and standard deviation (listed above).
9. The data was “melted” so there were 79 rows for each of the original observations, each corresponding to one of the 79 measurements.
10. The data was cast, generating a summary of the mean for each of these molten rows.
11. The data was written to a text file (out.txt).








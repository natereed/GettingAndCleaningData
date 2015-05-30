## About 

This project contains a script for creating a tidy data set from the UCI “Human Activity Recognition Using Smartphones” Data Set. See: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script run_analysis.R should be run in the same directory that contains the UCI HAR data set, which can be downloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

## How to run 

1. Download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the contents of the zip file.
3. In the same directory, run:
    R -f run_analysis.R

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








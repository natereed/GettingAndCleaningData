# Codebook

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

## Output

The output of run_analysis.R is a summary of the mean for each of the domain variables above (tBodyAcc-mean()-X, tBodyAcc-mean()-Y, etc), for each unique combination of subject and activity.

There are 180 rows of 82 observations in the final output.

A single row might look like this:
```
> output_df[1,]
  Subject.Id Activity.Id Activity.Label tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tGravityAcc-mean()-X
1          1           1        WALKING         0.2773308       -0.01738382        -0.1111481            0.9352232
  tGravityAcc-mean()-Y tGravityAcc-mean()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z
1            -0.282165          -0.06810286            0.07404163            0.02827211          -0.004168406
  tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y
1        -0.04183096        -0.06953005         0.08494482            -0.08999754            -0.03984287
  tBodyGyroJerk-mean()-Z tBodyAccMag-mean() tGravityAccMag-mean() tBodyAccJerkMag-mean() tBodyGyroMag-mean()
1            -0.04613093         -0.1369712            -0.1369712             -0.1414288          -0.1609796
  tBodyGyroJerkMag-mean() fBodyAcc-mean()-X fBodyAcc-mean()-Y fBodyAcc-mean()-Z fBodyAcc-meanFreq()-X
1              -0.2987037        -0.2027943        0.08971273        -0.3315601            -0.2075484
  fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
1             0.1130936            0.04972652             -0.170547           -0.03522552            -0.4689992
  fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
1                 -0.209262                -0.3862371                -0.1855303         -0.3390322         -0.1030594
  fBodyGyro-mean()-Z fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z fBodyAccMag-mean()
1         -0.2559409              0.0147845            -0.06577462           0.0007733216         -0.1286235
  fBodyAccMag-meanFreq() fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
1              0.1906437                 -0.0571194                     0.09382218              -0.1992526
  fBodyBodyGyroMag-meanFreq() fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-meanFreq() tBodyAcc-std()-X
1                   0.2688444                  -0.3193086                       0.1906634       -0.2837403
  tBodyAcc-std()-Y tBodyAcc-std()-Z tGravityAcc-std()-X tGravityAcc-std()-Y tGravityAcc-std()-Z tBodyAccJerk-std()-X
1        0.1144613       -0.2600279          -0.9766096           -0.971306          -0.9477172           -0.1136156
  tBodyAccJerk-std()-Y tBodyAccJerk-std()-Z tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z
1            0.0670025           -0.5026998        -0.4735355       -0.05460777        -0.3442666
  tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z tBodyAccMag-std() tGravityAccMag-std()
1            -0.2074219            -0.3044685            -0.4042555        -0.2196886           -0.2196886
  tBodyAccJerkMag-std() tBodyGyroMag-std() tBodyGyroJerkMag-std() fBodyAcc-std()-X fBodyAcc-std()-Y fBodyAcc-std()-Z
1           -0.07447175         -0.1869784             -0.3253249       -0.3191347       0.05604001       -0.2796868
  fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z fBodyGyro-std()-X fBodyGyro-std()-Y
1           -0.1335866            0.1067399           -0.5347134        -0.5166919       -0.03350816
  fBodyGyro-std()-Z fBodyAccMag-std() fBodyBodyAccJerkMag-std() fBodyBodyGyroMag-std() fBodyBodyGyroJerkMag-std()
1        -0.4365622        -0.3980326                -0.1034924              -0.321018                 -0.3816019
```
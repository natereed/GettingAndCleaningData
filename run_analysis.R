## run_analysis.R
library(reshape2)

load_data_frame <- function(dir, name, col_names) {
  path = file.path(dir, name);
  setwd(path);
  df <- read.table(sprintf("X_%s.txt", name), col.names=col_names);
  subjects <- read.table(sprintf("subject_%s.txt", name));
  activities <- read.table(sprintf("y_%s.txt", name), col.names="Activity.Id", stringsAsFactors=TRUE);
  
  # Add subject id 
  df$Subject.Id <- subjects$V1
  
  # Add activity id
  df$Activity.Id <- activities$Activity.Id
  return(df);
}

home_dir = getwd();
setwd(file.path(home_dir, "UCI HAR Dataset"));

# Create a named vector that contains the activity labels by loading in the activities.txt file.
# It should look like:
# c("WALKING"=1, "WALKING_UPSTAIRS"=2, "WALKING_DOWNSTAIRS"=3, "SITTING"=4, "STANDING"=5, "LAYING"=6);
act_labels_raw <- read.table("activity_labels.txt")
activity_labels <- as.character(act_labels_raw$V1)
names(activity_labels) <- act_labels_raw$V2

# Load features
features <- read.table("features.txt");

# Load the data frames for test, train, using the feature names as variables in features.txt
dir = getwd();
test_df <- load_data_frame(dir, "test", features$V2);
train_df <- load_data_frame(dir, "train", features$V2)
merged_df <- merge(test_df, train_df, all=TRUE)
merged_df$Activity.Label <- names(activity_labels)[match(merged_df$Activity.Id, activity_labels)]

# Subset the merged data set by extracting only the mean and standard deviation measurements 
# in addition to the subject, activity variables 
mean_measurements <- grep("mean", features$V2)
std_measurements <- grep("std", features$V2)
measurements <- c(mean_measurements, std_measurements)
subset_columns <- c(match("Activity.Id", names(merged_df)), 
                    match("Subject.Id", names(merged_df)), 
                    match("Activity.Label", names(merged_df)),
                    measurements);
merged_df <- merged_df[,subset_columns]

# Use human-readable variable names
subset_column_names <- c("Activity.Id", "Subject.Id", "Activity.Label", as.character(features$V2[measurements]));
names(merged_df) <- subset_column_names

# Reshape the data
melted_df <- melt(merged_df, id=c("Subject.Id", "Activity.Id", "Activity.Label"))
output_df <- dcast(melted_df, Subject.Id + Activity.Id + Activity.Label ~ variable, mean)

# Write to a csv 
setwd(home_dir);
write.table(output_df, "out.txt", row.names=FALSE);

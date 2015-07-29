#Tidy data codebook

`assessment/tidy_data.txt` contains tidy data extracted from "Human Activity Recognition Using Smartphones Dataset" data.


##Data:
Tidy data contains 180 rows and 2 colum. Each row contains averige values for each study subject and activity.


##Getting data
Tidy data was created using `run_analysis.R` script. No additional manual work on original/tidy data was perforemed.

This script is able to download original data. In order to download and extract original data, first 2 lines of script should be uncommented before running script.


##Variables 

- `subject`: number of study subject (integer, range 1:30)
- `activities`: activity label, one of: WALKING,WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

- `body_acc_x_mean`: average of x dimensions body acceleration signals (substracting gravity from total acceleration) means for activity for subject
- `body_acc_y_mean`: average of y dimensions body acceleration signals means for activity for subject
- `body_acc_z_mean`: average of z dimensions body acceleration signals means for activity for subject
- `body_acc_x_sd`: average of x dimensions body acceleration signals standard deviations for activity for subject
- `body_acc_y_sd`: average of y dimensions body acceleration signals standard deviations for activity for subject
- `body_acc_z_sd`: average of z dimensions body acceleration signals standard deviations for activity for subject

- `velocity_x_mean`: average of x dimensions angular velocity signals means for activity for subject
- `velocity_y_mean`: average of y dimensions angular velocity signals means for activity for subject
- `velocity_z_mean`: average of z dimensions angular velocity signals means for activity for subject
- `velocity_x_sd`:average of x dimensions angular velocity signals standard deviations for activity for subject
- `velocity_y_sd`:average of x dimensions angular velocity signals standard deviations for activity for subject
- `velocity_z_sd`:average of x dimensions angular velocity signals standard deviations for activity for subject

- `total_acc_x_mean`:average of x dimensions acceleration signals means for activity for subject
- `total_acc_y_mean`:average of y dimensions acceleration signals means for activity for subject
- `total_acc_z_mean`:average of z dimensions acceleration signals standard deviations for activity for subject
- `total_acc_x_sd`:average of x dimensions acceleration signals standard deviations for activity for subject
- `total_acc_y_sd`:average of y dimensions acceleration signals standard deviations for activity for subject
- `total_acc_z_sd`:average of z dimensions acceleration signals standard deviations for activity for subject


All information regarding original variables can be found in `UCI HAR Dataset/README.txt`

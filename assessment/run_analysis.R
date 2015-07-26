#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="UCI HAR Dataset.zip", ,method="curl")
#unzip("UCI HAR Dataset.zip")
#library(data.table)
#library(tidyr)
#library(dplyr)

#activity labels
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
all_labels <- rbind(test_labels, train_labels)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
all_activities <- activity_labels$V2[as.factor(all_labels$V1)]

#subjects
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
all_subjects <- rbind(test_subjects, train_subjects)

#mesurements
#body_acc_x
body_acc_x_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_x_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
all_body_acc_x <- rbind(body_acc_x_test, body_acc_x_train)
mean_body_acc_x <- apply(all_body_acc_x,1, mean)
sd_body_acc_x <- apply(all_body_acc_x,1, sd)

#body_acc_y
body_acc_y_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_y_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
all_body_acc_y <- rbind(body_acc_y_test, body_acc_y_train)
mean_body_acc_y <- apply(all_body_acc_y,1, mean)
sd_body_acc_y <- apply(all_body_acc_y,1, sd)

#body_acc_z
body_acc_z_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_acc_z_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
all_body_acc_z <- rbind(body_acc_z_test, body_acc_z_train)
mean_body_acc_z <- apply(all_body_acc_z,1, mean)
sd_body_acc_z <- apply(all_body_acc_z,1, sd)

#body_gyro_x
body_gyro_x_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_x_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
all_body_gyro_x <- rbind(body_gyro_x_test, body_gyro_x_train)
mean_body_gyro_x <- apply(all_body_gyro_x,1, mean)
sd_body_gyro_x <- apply(all_body_gyro_x,1, sd)

#body_gyro_y
body_gyro_y_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_y_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
all_body_gyro_y <- rbind(body_gyro_y_test, body_gyro_y_train)
mean_body_gyro_y <- apply(all_body_gyro_y,1, mean)
sd_body_gyro_y <- apply(all_body_gyro_y,1, sd)

#body_gyro_z
body_gyro_z_test <- read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
body_gyro_z_train <- read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
all_body_gyro_z <- rbind(body_gyro_z_test, body_gyro_z_train)
mean_body_gyro_z <- apply(all_body_gyro_z,1, mean)
sd_body_gyro_z <- apply(all_body_gyro_z,1, sd)

#total_acc_x
total_acc_x_test <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_x_train <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
all_total_acc_x <- rbind(total_acc_x_test, total_acc_x_train)
mean_total_acc_x <- apply(all_total_acc_x,1, mean)
sd_total_acc_x <- apply(all_total_acc_x,1, sd)

#total_acc_y
total_acc_y_test <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_y_train <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
all_total_acc_y <- rbind(total_acc_y_test, total_acc_y_train)
mean_total_acc_y <- apply(all_total_acc_y,1, mean)
sd_total_acc_y <- apply(all_total_acc_y,1, sd)

#total_acc_z
total_acc_z_test <- read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
total_acc_z_train <- read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
all_total_acc_z <- rbind(total_acc_z_test, total_acc_z_train)
mean_total_acc_z <- apply(all_total_acc_z,1, mean)
sd_total_acc_z <- apply(all_total_acc_z,1, sd)

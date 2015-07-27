#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="UCI HAR Dataset.zip", ,method="curl")
#unzip("UCI HAR Dataset.zip")
library(data.table)
library(dplyr)

#activity labels
test_labels <-read.table("UCI HAR Dataset/test/y_test.txt")
train_labels <-read.table("UCI HAR Dataset/train/y_train.txt")
all_labels <-rbind(test_labels, train_labels)
activity_labels <-read.table("UCI HAR Dataset/activity_labels.txt")
all_activities <- activity_labels$V2[as.factor(all_labels$V1)]

#subjects
test_subjects <-read.table("UCI HAR Dataset/test/subject_test.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
all_subjects <-rbind(test_subjects, train_subjects)

#mesurements
#body_acc_x
body_acc_x_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"))
body_acc_x_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"))
all_body_acc_x <-rbind(body_acc_x_test, body_acc_x_train)
mean_body_acc_x <-apply(all_body_acc_x,1, mean)
sd_body_acc_x <-apply(all_body_acc_x,1, sd)
rm(body_acc_x_test, body_acc_x_train, all_body_acc_x)

#body_acc_y
body_acc_y_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"))
body_acc_y_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"))
all_body_acc_y <-rbind(body_acc_y_test, body_acc_y_train)
mean_body_acc_y <-apply(all_body_acc_y,1, mean)
sd_body_acc_y <-apply(all_body_acc_y,1, sd)
rm(body_acc_y_test, body_acc_y_train, all_body_acc_y)

#body_acc_z
body_acc_z_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"))
body_acc_z_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"))
all_body_acc_z <-rbind(body_acc_z_test, body_acc_z_train)
mean_body_acc_z <-apply(all_body_acc_z,1, mean)
sd_body_acc_z <-apply(all_body_acc_z,1, sd)
rm(body_acc_z_test, body_acc_z_train, all_body_acc_z)

#body_gyro_x
body_gyro_x_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"))
body_gyro_x_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"))
all_body_gyro_x <-rbind(body_gyro_x_test, body_gyro_x_train)
mean_body_gyro_x <-apply(all_body_gyro_x,1, mean)
sd_body_gyro_x <-apply(all_body_gyro_x,1, sd)
rm(body_gyro_x_test, body_gyro_x_train, all_body_gyro_x)

#body_gyro_y
body_gyro_y_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"))
body_gyro_y_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"))
all_body_gyro_y <-rbind(body_gyro_y_test, body_gyro_y_train)
mean_body_gyro_y <-apply(all_body_gyro_y,1, mean)
sd_body_gyro_y <-apply(all_body_gyro_y,1, sd)
rm(body_gyro_y_test, body_gyro_y_train, all_body_gyro_y)

#body_gyro_z
body_gyro_z_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"))
body_gyro_z_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"))
all_body_gyro_z <-rbind(body_gyro_z_test, body_gyro_z_train)
mean_body_gyro_z <-apply(all_body_gyro_z,1, mean)
sd_body_gyro_z <-apply(all_body_gyro_z,1, sd)
rm(body_gyro_z_test, body_gyro_z_train, all_body_gyro_z)

#total_acc_x
total_acc_x_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"))
total_acc_x_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"))
all_total_acc_x <-rbind(total_acc_x_test, total_acc_x_train)
mean_total_acc_x <-apply(all_total_acc_x,1, mean)
sd_total_acc_x <-apply(all_total_acc_x,1, sd)
rm(total_acc_x_test, total_acc_x_train, all_total_acc_x)

#total_acc_y
total_acc_y_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"))
total_acc_y_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"))
all_total_acc_y <-rbind(total_acc_y_test, total_acc_y_train)
mean_total_acc_y <-apply(all_total_acc_y,1, mean)
sd_total_acc_y <-apply(all_total_acc_y,1, sd)
rm(total_acc_y_test, total_acc_y_train, all_total_acc_y)

#total_acc_z
total_acc_z_test <-data.table( read.table("UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"))
total_acc_z_train <-data.table( read.table("UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"))
all_total_acc_z <- rbind(total_acc_z_test, total_acc_z_train)
mean_total_acc_z <- apply(all_total_acc_z,1, mean)
sd_total_acc_z <- apply(all_total_acc_z,1, sd)
rm(total_acc_z_test, total_acc_z_train, all_total_acc_z)

data = data.table(all_subjects)
setnames(data, old="V1", new="subject")
data <- data[,"activities":=all_activities]
data <- data[,"body_acc_x_mean":=mean_body_acc_x]
data <- data[,"body_acc_y_mean":=mean_body_acc_y]
data <- data[,"body_acc_z_mean":=mean_body_acc_z]
data <- data[,"body_acc_x_sd":=sd_body_acc_x]
data <- data[,"body_acc_y_sd":=sd_body_acc_y]
data <- data[,"body_acc_z_sd":=sd_body_acc_z]
data <- data[,"velocity_x_mean":=mean_body_gyro_x]
data <- data[,"velocity_y_mean":=mean_body_gyro_y]
data <- data[,"velocity_z_mean":=mean_body_gyro_z]
data <- data[,"velocity_x_sd":=sd_body_gyro_x]
data <- data[,"velocity_y_sd":=sd_body_gyro_y]
data <- data[,"velocity_z_sd":=sd_body_gyro_z]
data <- data[,"total_acc_x_mean":=mean_total_acc_x]
data <- data[,"total_acc_y_mean":=mean_total_acc_y]
data <- data[,"total_acc_z_mean":=mean_total_acc_z]
data <- data[,"total_acc_x_sd":=sd_total_acc_x]
data <- data[,"total_acc_y_sd":=sd_total_acc_y]
data <- data[,"total_acc_z_sd":=sd_total_acc_z]

rm(
all_activities,
mean_body_acc_x,
mean_body_acc_y,
mean_body_acc_z,
sd_body_acc_x,
sd_body_acc_y,
sd_body_acc_z,
mean_body_gyro_x,
mean_body_gyro_y,
mean_body_gyro_z,
sd_body_gyro_x,
sd_body_gyro_y,
sd_body_gyro_z,
mean_total_acc_x,
mean_total_acc_y,
mean_total_acc_z,
sd_total_acc_x,
sd_total_acc_y,
sd_total_acc_z)

data %>% group_by(subject, activities) %>% summarize(
    body_acc_x_mean=mean(body_acc_x_mean),
    body_acc_y_mean=mean(body_acc_y_mean),
    body_acc_z_mean=mean(body_acc_z_mean),
    body_acc_x_sd=mean(body_acc_x_sd),
    body_acc_y_sd=mean(body_acc_y_sd),
    body_acc_z_sd=mean(body_acc_z_sd),
    velocity_x_mean=mean(velocity_x_mean),
    velocity_y_mean=mean(velocity_y_mean),
    velocity_z_mean=mean(velocity_z_mean),
    velocity_x_sd=mean(velocity_x_sd),
    velocity_y_sd=mean(velocity_y_sd),
    velocity_z_sd=mean(velocity_z_sd),
    total_acc_x_mean=mean(total_acc_x_mean),
    total_acc_y_mean=mean(total_acc_y_mean),
    total_acc_z_mean=mean(total_acc_z_mean),
    total_acc_x_sd=mean(total_acc_x_sd),
    total_acc_y_sd=mean(total_acc_y_sd),
    total_acc_z_sd=mean(total_acc_z_sd)
) %>% print  %>% write.table("tidy_data.txt", row.name=FALSE)

#Getting and cleaning data
This repository contains all code created for "Getting and Cleaning Data" course on Coursera.

##Repository content:
- `quiz01/`, `quiz02/`, `quiz03/` and `quiz04/` directories contains scripts for weekly quizzies.
- `assessment/` directory contains peer assessment project.


##Assesment sript:
Assesment script can be found in `assessment/run_analysis.R`

###Script description:
This script is created to download "Human Activity Recognition Using Smartphones Dataset" data and to convert it to tidy data according to [Course Project](https://class.coursera.org/getdata-030/human_grading) instuctions.


Then `run_analysis.R` script runs following steps:

- reads all required mesurments
- count means, and sd of these mesurments 
- creates datatable with all mesurments 
- groups data and counts avarages 
- finally saves result (tidy data) to `assessment/tidy_data.txt`

For more details look into source of script and comments inside code.

###Downloading data:
This script can download and extract [project data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
In order to download and extract data uncomment 2 first lines of script and run it.

##Tidy data:
Tidy data is placed in `assessment/tidy_data.txt` and described in `assessment/CodeBook.md`.

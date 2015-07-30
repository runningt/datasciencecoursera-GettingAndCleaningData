#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile="getdata_data_ss06hid.csv", ,method="curl")
df <- read.csv('getdata_data_ss06hid.csv')
x <- strsplit(names(df), 'wgtp')
print x[[123]]


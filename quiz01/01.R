#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf", destfile="getdata_data_PUMSDataDict06.pdf", ,method="curl")
#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile="getdata_data_ss06hid.csv", ,method="curl")
library(data.table)
dt =data.table(read.csv('getdata_data_ss06hid.csv'))
nrow(dt[dt$VAL==24])



#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for", destfile="getdata_wksst8110.for", ,method="curl")
library(data.table)
x =fread('getdata_wksst8110.for.fixed', sep=",")
sum(x[,V4])

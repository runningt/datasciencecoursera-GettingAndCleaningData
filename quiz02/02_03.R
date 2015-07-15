#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile="getdata_data_ss06_pid.csv", ,method="curl")
library(sqldf)
acs= read.csv('getdata_data_ss06_pid.csv')

#02
sqldf("select pwgtp1 from acs")
sqldf("select pwgtp1 from acs where AGEP < 50")
sqldf("select * from acs where AGEP < 50")
sqldf("select * from acs") 

#3
sqldf("select distinct pwgtp1 from acs")
sqldf("select unique * from acs")
sqldf("select distinct AGEP from acs")
sqldf("select unique AGEP from acs") 

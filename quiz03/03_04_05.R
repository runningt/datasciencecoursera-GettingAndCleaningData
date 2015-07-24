#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile="getdata_data_FGDP.csv", ,method="curl")
#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile="getdata_data_FEDSTATS_Country.csv", ,method="curl")
#library(data.table)
GDP =read.csv('getdata_data_FGDP.csv', skip=4, nrows=190)
GDP$GDP = as.integer(gsub(",","",as.character(GDP$X.4)))
FEDSTATS =read.csv('getdata_data_FEDSTATS_Country.csv')
res=merge(GDP, FEDSTATS, by.x="X", by.y="CountryCode")
res3=res[order(res$GDP),]
nrow(res3)
res3[13]
res3$gdprank=order(res3$GDP,decreasing=TRUE)
res4=tapply(res3$gdprank, res3$Income.Group, ave)
res4
#install.package("Hmisc")
library(Hmisc)
res3$gdpgroup=cut2(res3$gdprank, g=5)
res5=table(res3$gdpgroup, res3$Income.Group)
res5


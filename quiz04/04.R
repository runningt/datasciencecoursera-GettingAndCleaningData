#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile="getdata_data_FGDP.csv", ,method="curl")
#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile="getdata_data_FEDSTATS_Country.csv", ,method="curl")

GDP =read.csv('getdata_data_FGDP.csv', skip=4, nrows=190)
GDP$GDP = as.integer(gsub(",","",as.character(GDP$X.4)))
FEDSTATS =read.csv('getdata_data_FEDSTATS_Country.csv')
all=merge(GDP, FEDSTATS, by.x="X", by.y="CountryCode")

fye_june <- all[apply(all, 2, function(x) {grepl("[Ff]iscal.*year.*June", x, useBytes=TRUE)})]
res4 <- length(fye_june)
print(res4)


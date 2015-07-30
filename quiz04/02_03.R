#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile="getdata_data_FGDP.csv", ,method="curl")

GDP <- read.csv('getdata_data_FGDP.csv', skip=4, nrows=190)
#question 2
GDP$GDP = as.integer(gsub(",","",as.character(GDP$X.4)))

res2 = mean(GDP$GDP)
print(res2)

#question 3
countryNames <- GDP$X.3
#incorrect characters in locale
countryNames[99] <- NA
countryNames[186] <- NA
res3 <- length(grep("^United",countryNames))
print(res3)



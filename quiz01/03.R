#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile="DATA.gov_NGAP.xlsx", ,method="curl")
library(xlsx)
dat =read.xlsx('DATA.gov_NGAP.xlsx', sheetIndex=1,colIndex=7:15,rowIndex=18:23)
x = sum(dat$Zip*dat$Ext,na.rm=T) 



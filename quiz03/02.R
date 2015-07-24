#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile="getdata_jeff.jpg", ,method="curl")
#install.packages("jpeg")
library(jpeg)
x = readJPEG("getdata_jeff.jpg", native=TRUE)
quantile(image,c(0.30,0.80))


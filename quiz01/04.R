#download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", destfile="getdata_data_restaurants.xml", ,method="curl")
library(XML)
doc =xmlTreeParse('getdata_data_restaurants.xml',useInternal=TRUE)
rootNode=xmlRoot(doc)
x = xpathSApply(rootNode[[1]], "//row[zipcode='21231']/zipcode", xmlValue)
print (length(x))


#install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
sampleTimes2012<-sampleTimes[year(sampleTimes) == 2012]
res1<-length(sampleTimes2012)
res2<-length(sampleTimes2012[wday(sampleTimes2012, label=TRUE) == "Mon"])
print(res1)
print(res2)

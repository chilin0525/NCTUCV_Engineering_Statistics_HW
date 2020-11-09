(lct<-Sys.getlocale("LC_TIME"))
Sys.setlocale("LC_TIME","C")
library(xlsx)
data1<-read.xlsx2(file="weatherdata.xlsx",sheetName  ="data")
system.time(read.xlsx2(file="weatherdata.xlsx",sheetName = "data"))

rain<-data1$Rain..S.RGB.20826632.20748161.1...mm..Meishan
max(rain)
data1$Date[which(rain==max(rain))]
date<-as.POSIXct(data1$Date,format="%Y/%m/%d %H:%M:%S")


June_date<-(date-as.POSIXct("07-01-20 00:00:00"))>0
June_last<-max(which(June_date=="FALSE"))
sprintf("rainfall of June:%f",sum(as.double(rain[1:June_last])))
July_date<-(date-as.POSIXct("08-01-20 00:00:00"))>0
July_last<-max(which(July_date=="FALSE"))
sprintf("rainfall of July:%f",sum(as.double(rain[(June_last+1):July_last])))
Aug_date<-(date-as.POSIXct("09-01-20 00:00:00"))>0
Aug_last<-max(which(Aug_date=="FALSE"))
sprintf("rainfall of Aug:%f",sum(as.double(rain[(July_last+1):Aug_last])))
Sep_date<-(date-as.POSIXct("10-01-20 00:00:00"))>0
Sep_last<-length(date)
sprintf("rainfall of Sep:%f",sum(as.double(rain[(Aug_last+1):Sep_last])))
#if(as.POSIXct(datetime.sales[i])-as.POSIXct("2019-01-01 00:00:00")>=0)
sink(file = "Weatherdata.txt")
cat("最大單筆雨量與發生日期時間:")
sprintf("%f %s",max(rain),data1$Date[which(rain==max(rain))])
cat("June 累積雨量:")
sprintf("%f ",sum(rain[1:June_last]))
cat("July 累積雨量:")
sprintf("%f ",sum(rain[(June_last+1):July_last]))
cat("Aus 累積雨量:")
sprintf("%f ",sum(rain[(July_last+1):Aug_last]))
cat("Sep 累積雨量:")
sprintf("%f ",sum(rain[(Aug_last+1):Sep_last]))
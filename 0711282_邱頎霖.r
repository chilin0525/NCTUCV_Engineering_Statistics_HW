# library("xlsx")

# --------Create Data------------
(lct <- Sys.getlocale("LC_TIME"))
Sys.setlocale("LC_TIME","C")
x <- c("01/01/2015 00:00:00","12/31/2019 23:59:59")
datatimes <- strptime(x,"%m/%d/%Y %H:%M:%S")
datatimes
set.seed(0711)
datatime.sales <- sample(seq(from = datatimes[1], to = datatimes[2], by = "hour"),100,replace=T)
num.sales <- sample(0:1000,100,replace = T)
sales <- data.frame(time = datatime.sales, num = num.sales)
sales
# -----------End Data------------

write.csv(sales,file="output.csv") # should ignore index?
write.table(sales,file="output.txt")
save(sales,file="output.RData")
# write.xlsx(sales,file="output.xlsx",sheetName="sales",append=FALSE)

sprintf("sales size: %f kb",object.size(sales)/1000)
sum = 0;
day = 0;

for(row in 1:nrow(sales)){
    time <- sales[row,"time"]
    salenum <- sales[row,"num"]
    if(difftime(as.POSIXct(time), as.POSIXct("2019-01-01 00:00:00"),unit="secs")>=0){
        print(paste("on ",time," sales ",salenum))
        sum = sum + salenum;
        day = day + 1;
    }
}

sprintf("sales:")
sum

sprintf("days:")
day

sprintf("average sales: %f",sum/day)

sprintf("The size of CSV: ") 
file.size("output.csv", units="B")

sprintf("The size of TXT: ") 
file.size("output.txt", units="B")

sprintf("THE size of Rdata:")
file.size("output.RData", units="B")
# csv.size
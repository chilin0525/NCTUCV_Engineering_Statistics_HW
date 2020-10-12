
library("xlsx")

weather_data <- read.xlsx2(file="weatherdata.xlsx",sheetName="data")

######################### P1 #################################
system.time(read.xlsx2(file="weatherdata.xlsx",sheetName="data"))

# class(weather_data)

date_data <- weather_data[,2]
rain_data <- weather_data[,4]

tmp <- data.frame(date = date_data, rain = rain_data)

max_rain = 0.0;
for(row in 1:nrow(tmp)){
    ans_date <- tmp[row,"date"]
    ans_rain <- tmp[row,"rain"]
    if(ans_rain>max_rain){
        max_rain <- ans_rain
        max_rain_date <- ans_date
    }
}


#num_rain_date <- factor(rain_data)
#as.numeric(as.character(num_rain_date)

# tmp2 <- data.frame(date = date_data, rain = num_rain_date)

june_rain = 0.0;
july_rain = 0.0;
aug_rain = 0.0;
sup_rain = 0.0;

for(row in 1:nrow(tmp)){
    ans_date <- tmp[row,"date"]
    ans_rain <- tmp[row,"rain"]
    tmp_date <- substr(ans_date,1,2)
    if(tmp_date=="06") june_rain = june_rain + as.double(ans_rain)
    if(tmp_date=="07") july_rain = july_rain + as.double(ans_rain)
    if(tmp_date=="08") aug_rain = aug_rain  + as.double(ans_rain)
    if(tmp_date=="09") sup_rain = sup_rain + as.double(ans_rain)
}

max_rain

max_rain_date

june_rain

july_rain

aug_rain

sup_rain

sink("Weatherdata.txt")
cat("max_rain and date: ",max_rain,max_rain_date,sep=" ")
cat("\n")
cat("June: ",june_rain,sep=" ")
cat("\n")
cat("July: ",july_rain,sep=" ")
cat("\n")
cat("Aug: ",aug_rain,sep=" ")
cat("\n")
cat("Sep:",sup_rain,sep=" ")
cat("\n")
cat("Datetime:",date_data)
cat(" ")
cat("rain:",rain_data)
sink()

# file.show("outfile.txt")
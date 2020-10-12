
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



max_rain
max_rain_date
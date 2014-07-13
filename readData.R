data <- read.table("../household_power_consumption.txt", 
                 colClasses=c("character","character",rep("numeric",7)),
                 na.strings="?",sep=";",header=TRUE)
s <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")
s$Datetime <- strptime(paste(s$Date, " ", s$Time), "%d/%m/%Y %H:%M:%S")
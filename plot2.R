source("readData.R")
png("plot2.png")
plot(s$Datetime, s$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()
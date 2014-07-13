source("readData.R")
png("plot1.png")
hist(s$Global_active_power,
     xlab="GLobal Active Power (kilowatts)",
     ylab="Frequency",
     main="Global Active Power",
     col="red")
dev.off()

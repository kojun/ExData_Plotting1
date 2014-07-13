source("readData.R")
png("plot4.png")

par(mfrow=c(2,2), mar=c(5.1,4.1,4.1,2.1), oma=c(0,0,0,0))

plot(s$Datetime, s$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")

plot(s$Datetime, s$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

plot(s$Datetime, s$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
points(s$Datetime, s$Sub_metering_2, type="l", col="red")
points(s$Datetime, s$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"),
       lty=c(1,1,1))

plot(s$Datetime, s$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()
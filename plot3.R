source("readData.R")
png("plot3.png")
plot(s$Datetime, s$Sub_metering_1, type="l",
     xlab="", ylab="Energy sub metering")
points(s$Datetime, s$Sub_metering_2, type="l", col="red")
points(s$Datetime, s$Sub_metering_3, type="l", col="blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"),
       lty=c(1,1,1))
dev.off()
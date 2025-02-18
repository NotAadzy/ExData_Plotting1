source("load data file.R")

png("plot3.png", width=480, height=480)

# Plot the first sub-metering data
plot(data$Datetime, data$Sub_metering_1, type="l", col="black", 
     xlab="", ylab="Energy sub metering", main="Energy Consumption by Sub-Metering")

# Add the other sub-metering data
lines(data$Datetime, data$Sub_metering_2, col="red")
lines(data$Datetime, data$Sub_metering_3, col="blue")

# Add a legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1)

dev.off()

source("load_data.R")  # Load the dataset

# Open PNG file
png("plot1.png", width=480, height=480)

# Create the histogram
hist(data$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency")

# Save and close the file
dev.off()


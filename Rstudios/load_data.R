# Load necessary packages
library(data.table)

# Read the data
data <- fread("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

# Convert Date column to Date format
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Filter only for the dates 2007-02-01 and 2007-02-02
data <- data[data$Date %in% as.Date(c("2007-02-01", "2007-02-02"))]

# Combine Date and Time into a single Datetime column
data$Datetime <- as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")


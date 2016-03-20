# Set working directory
setwd("/Users/Maggie/Documents/Exploratory Data Analysis")

# read in data set
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?")

# subset data
subdata <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

# convert datetime
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

## Plot 3
  plot(datetime, subdata$Sub_metering_1, type="l",xlab="", ylab="Global Active Power (kilowatts)" )
  lines(datetime, subdata$Sub_metering_2, col='Red')
  lines(datetime, subdata$Sub_metering_3, col='Blue')

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

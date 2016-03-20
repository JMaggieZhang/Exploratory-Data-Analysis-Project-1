# get working directory
setwd("/Users/Maggie/Documents/Exploratory Data Analysis")

# read in data set 
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?")
# subset data
subdata <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

# convert variables
GAP <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# making plot4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime, subdata$Voltage,type="l", xlab="", ylab="Voltage (volt)" )
plot(datetime, subdata$Sub_metering_1, type="l", xlab="", ylab="Global Active Power (kilowatts)")
lines(datetime, subdata$Sub_metering_2, col = "Red")
lines(datetime, subdata$Sub_metering_3, col = "Blue")
plot(datetime, subdata$Global_reactive_power, type="l", ylab="Global Rective Power (kilowatts)",xlab="")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()

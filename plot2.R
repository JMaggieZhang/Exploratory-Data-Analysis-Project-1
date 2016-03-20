# Set working directory
setwd("/Users/Maggie/Documents/Exploratory Data Analysis")

# read in data set
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?")

# subset data
subdata <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

GAP <- as.numeric(subdata$Global_active_power)
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# making plot2 and save it 
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()

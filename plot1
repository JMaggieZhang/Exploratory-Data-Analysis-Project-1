# Set working directory
setwd("/Users/Maggie/Documents/Exploratory Data Analysis")

# Read in full data set
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?")

Subset data
subdata <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

Making plot1
GAP <- as.numeric(subdata$Global_active_power)
hist(GAP, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

#save it
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

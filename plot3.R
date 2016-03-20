# Set working directory
setwd("/Users/Maggie/Documents/Exploratory Data Analysis")

# read in data set
data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?")

# subset data
subdata <- subset(data, data$Date %in% c("1/2/2007","2/2/2007"))

# convert datetime
datetime <- strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


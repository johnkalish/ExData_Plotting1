## set working directory
setwd("~/datasciencecoursera/Exploratory Data Analysis/Course Project 1/ExData_Plotting1")

## load data
household_power_consumption <- read.csv("~/datasciencecoursera/Exploratory Data Analysis/Course Project 1/ExData_Plotting1/data/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

## create Datetime column
household_power_consumption$Datetime <- strptime(paste(household_power_consumption$Date,household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")

## subset data frame to appropriate date range
household_power_consumption <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

## plot 2
png(file="plot2.png",width=480,height=480)
plot(household_power_consumption$Datetime,household_power_consumption$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab="")
dev.off()

## set working directory
setwd("~/datasciencecoursera/Exploratory Data Analysis/Course Project 1/ExData_Plotting1")

## load data
household_power_consumption <- read.csv("~/datasciencecoursera/Exploratory Data Analysis/Course Project 1/ExData_Plotting1/data/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

## create Datetime column
household_power_consumption$Datetime <- strptime(paste(household_power_consumption$Date,household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")

## subset data frame to appropriate date range
household_power_consumption <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007"),]

## plot 3
png(file="plot3.png",width=480,height=480)
plot(household_power_consumption$Datetime,household_power_consumption$Sub_metering_1,  type="n", ylab = "Energy sub metering", xlab="")
lines(household_power_consumption$Datetime,household_power_consumption$Sub_metering_1,col="black")
lines(household_power_consumption$Datetime,household_power_consumption$Sub_metering_2,col="red")
lines(household_power_consumption$Datetime,household_power_consumption$Sub_metering_3,col="blue")
legend("topright", col= c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))
dev.off()
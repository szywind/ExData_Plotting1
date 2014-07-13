### 'plot4.R'
# setup the work directory
setwd('/Users/shenzhenyuan//Desktop/MOOC/Coursera/JHU-Data Science/Exploratory Data Analysis/Course Projects/Course Project 1/')

# read the data of 2-day period in February, 2007
data <- read.table('./household_power_consumption.txt',sep=';',colClasses = "character",na.string="?")
date <- as.character(data[,1])
data <- data[which(date=="1/2/2007"|date=="2/2/2007"),]

# save the plot as 'plot4.png'
png(file = "plot4.png")
par(mfrow = c(2,2))
dateTime <- strptime(paste(data[,1],data[,2]), format="%d/%m/%Y %H:%M:%S")

# sub-plot 1
plot(dateTime,data[,3], type = 'l', ylab = "Global Active Power (kilowatts)",xlab = '')

# sub-plot 2
plot(dateTime, data[,5], type = 'l', xlab = 'datetime', ylab = 'Voltage')

# sub-plot 3
plot(dateTime, data[,7], type = 'l', ylab = "Energy sub metering",xlab = '',col = 'black')
lines(dateTime, data[,8], type = 'l', xlab = '', col = 'red')
lines(dateTime, data[,9], type = 'l', xlab = '', col = 'blue')
legend("topright", pch = 95, col =c("black","red","blue"), legend = c('Sub_metering_1',"Sub_metering_2","Sub_metering_3"))

# sub-plot 4
plot(dateTime, data[,4], type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')
dev.off()
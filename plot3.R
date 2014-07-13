### 'plot3.R'
# setup the work directory
setwd('/Users/shenzhenyuan//Desktop/MOOC/Coursera/JHU-Data Science/Exploratory Data Analysis/Course Projects/Course Project 1/')

# read the data of 2-day period in February, 2007
data <- read.table('./household_power_consumption.txt',sep=';',colClasses = "character",na.string="?")
date <- as.character(data[,1])
data <- data[which(date=="1/2/2007"|date=="2/2/2007"),]

# save the plot as 'plot3.png'
png(file = "plot3.png")
dateTime <- strptime(paste(data[,1],data[,2]), format="%d/%m/%Y %H:%M:%S")
plot(dateTime, data[,7], type = 'l', ylab = "Energy sub metering",xlab = '',col = 'black')
lines(dateTime, data[,8], type = 'l', xlab = '', col = 'red')
lines(dateTime, data[,9], type = 'l', xlab = '', col = 'blue')
legend("topright", pch = 95, col =c("black","red","blue"), legend = c('Sub_metering_1',"Sub_metering_2","Sub_metering_3"))
dev.off()
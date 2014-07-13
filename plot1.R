### 'plot1.R'
# setup the work directory
setwd('/Users/shenzhenyuan//Desktop/MOOC/Coursera/JHU-Data Science/Exploratory Data Analysis/Course Projects/Course Project 1/')

# read the data of 2-day period in February, 2007
data <- read.table('./household_power_consumption.txt',sep=';',colClasses = "character",na.string="?")
date <- as.character(data[,1])
data <- data[which(date=="1/2/2007"|date=="2/2/2007"),]

# save the plot as 'plot1.png'
png(file = "plot1.png")
hist(as.numeric(data[,3]),col = "red",main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()
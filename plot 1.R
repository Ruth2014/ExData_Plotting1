#Plot_1
#Exploratory Data Analysis Project I
ls()
remove(list=ls())
graphics.off()
getwd()
setwd("C:/Users/Inspiron 5537pro/Desktop/EDAP_I")
library(dplyr)
#Reading, naming and subsetting power consumption data
pow <- read.table("household_power_consumption.txt",skip=1,sep=";")
dim(pow)
names(pow)
names(pow) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpow <- subset(pow,pow$Date=="1/2/2007" | pow$Date =="2/2/2007")
head(subpow)
png(filename='plot1.png', width=480, height=480, units='px')
hist(as.numeric(as.character(subpow$Global_active_power)),
     col="red",main="Global Active Power",
     xlab="Global Active Power(kilowatts)")
# annotating graph
title(main="Global Active Power")
dev.off() 


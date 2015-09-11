## First plot for Exploring Data Project 1
# set working directory
setwd("C:/Users/jbkessin/Documents/Explore_Data/Proj_1")
# Load file
power_cons <- read.table("C:/Users/jbkessin/Documents/Explore_Data/household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors=FALSE)
# Convert Data
power_cons$Date <- as.Date(power_cons$Date, "%d/%m/%Y")
power_cons$Global_active_power <- as.numeric(power_cons$Global_active_power)
power_cons$Global_reactive_power <- as.numeric(power_cons$Global_reactive_power)
# Load Dplyr and other packages
library(dplyr)

# subset for dates
filt_pow <- filter(power_cons, Date >= "2007-02-01" & Date <= "2007-02-02")

#create 1st plot as well as saving it to working directory
png(filename = "plot1.png", width = 480, height = 480)
hist(filt_pow$Global_active_power, breaks = 12, axes=F, col="red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power" )
axis(side = 2, at = c(0,200,400,600,800,1000,1200), labels = TRUE)
axis(side = 1, at = c(0,2,4,6), labels = TRUE)
dev.off()


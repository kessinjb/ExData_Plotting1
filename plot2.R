# Script to create plot2
library(dplyr)
# I have a series of column changes in order to have a more plot friendly date column
p2 <- mutate(filt_pow, date_time = paste(Date, Time, sep = ' '))
p2$date_time <- strftime(p2$date_time, format = "%Y-%m-%d %H:%M:%S")
# converts from character, w/o this, won't plot
p2$date_time <- strptime(p2$date_time, format = "%Y-%m-%d %H:%M:%S")
# p2 <- mutate(p2, day = strftime(p2$date_time, format = "%a %H:%M:%S"))
p2 <- mutate(p2, day_lab = strftime(p2$date_time, format = "%a"))
p2 <- na.omit(p2)
# creates plot
png(filename = "plot2.png", width = 480, height = 480)
plot(na.omit(p2$date_time), p2$Global_active_power,  type="l",
ylab = "Global Active Power (kilowatts)",
xlab = "")
dev.off()

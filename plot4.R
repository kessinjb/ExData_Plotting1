## Create Plot 4 for Exploring Data Project 1

png(filename = "plot4.png", width = 480, height = 480)
# tells R to create 2 x x2
par(mfrow=c(2,2))

# creates plot 1
plot(na.omit(p2$date_time), p2$Global_active_power,  type="l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "")

# convert voltage to numeric
p3$Voltage <- as.numeric(p3$Voltage)
p3$Global_active_power <- as.numeric(p3$Global_active_power)

# creates plot 2
plot(na.omit(p3$date_time), p3$Voltage,  type="l",
     ylab = "Voltage",
     xlab = "datetime")
axis(side = 2, at = c(234,238,242,246), labels = TRUE)

# creates plot 3
plot(p3$date_time, p3$Sub_metering_1 ,  type="l",
     ylab = "Energy sub metering",
     xlab = "")
lines(p3$date_time, p3$Sub_metering_2 ,col="red")
lines(p3$date_time, p3$Sub_metering_3 ,col="blue")
legend("topright", col=c("black","red","blue") ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = 1 , cex = 0.65, bty ="n" )
# cex controls legend size

# creates plot 4
plot(na.omit(p3$date_time), p3$Global_reactive_power,  type="l",
          ylab="Global_reactive_power", xlab = "datetime")
dev.off()

## Script to Create Plot 3
# Just creating a different dataset to work with in case changes are needed

p3 <- p2
p3$Sub_metering_1 <- as.numeric(p3$Sub_metering_1)
p3$Sub_metering_2 <- as.numeric(p3$Sub_metering_2)
p3$Sub_metering_3 <- as.numeric(p3$Sub_metering_3)

# create plot
png(filename = "plot3.png", width = 480, height = 480)
plot(p3$date_time, p3$Sub_metering_1 ,  type="l",
     ylab = "Energy sub metering",
     xlab = "")
lines(p3$date_time, p3$Sub_metering_2 ,col="red")
lines(p3$date_time, p3$Sub_metering_3 ,col="blue")
legend("topright", col=c("black","red","blue") ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
            lty = 1 )
dev.off()

plot3 <- plot2

#Creating plot
plot( x = plot3$DateTime, y = plot3$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")

#Adding the other variables
lines(plot3$DateTime, plot3$Sub_metering_2, col = "red")
lines(plot3$DateTime, plot3$Sub_metering_3, col = "blue")

#Creating the legend
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)

#PNG
dev.copy(png, file = "Plot3.png")
dev.off()

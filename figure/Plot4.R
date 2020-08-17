plot4 <- plot3
plot4 <- mutate(plot4, Global_active_power = as.numeric(Global_active_power))

#Creating the space for 2 x 2 plots
par(mfrow = c(2,2))

#Creating all the plots
with(plot4, {
    plot(DateTime, Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts")
    plot(DateTime, Voltage, type = "l")
    plot(DateTime, Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
    lines(DateTime, Sub_metering_2, col = "red")
    lines(DateTime, Sub_metering_3, col = "blue")
    plot(DateTime, Global_reactive_power, type = "l")
})

#PNG
dev.copy(png, file = "Plot4.png")
dev.off()

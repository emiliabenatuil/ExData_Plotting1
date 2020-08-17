#
plot2 <- power_consumption

#Creating a new variable that has date & time together
plot2 <- mutate(plot2, DateTime = strptime(paste(plot2$Date, plot2$Time, sep=" "), "%d/%m/%Y %H:%M:%S"))

#Plot
with(plot2, plot( x = plot2$DateTime, y = plot2$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts"))

#PNG
dev.copy(png, file = "Plot2.png")
dev.off()
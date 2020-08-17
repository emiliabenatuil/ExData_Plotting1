#Opening Library
library(data.table)
library(dplyr)

#Reading the data
ata <- read.table("C:/data/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";")

#Subsetting for the dates
power_consumption <- filter(data, Date == "1/2/2007" | Date == "2/2/2007")

#Plot1
hist(power_consumption$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#PNG
dev.copy(png, file = "Plot1.png")
dev.off()
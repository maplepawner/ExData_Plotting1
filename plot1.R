png(filename = "plot1.png", width = 480, height = 480)
power = read.table("household_power_consumption.txt",header = TRUE, sep = ";")
globalactive <- power$Global_active_power
hist(globalactive, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()

png(filename = "plot2.png", width = 480, height = 480)
power = read.table("household_power_consumption.txt",header = TRUE, sep = ";")
globalactive <- power$Global_active_power
plot.ts(globalactive, ylab="Global Active Power (kilowatts)",xlab="",axes=FALSE)
axis(side=2, labels=TRUE)
tick <- c(0, 1440, 2880)
labels<- c("Thu","Fri","Sat")
axis(side=1,at=tick,labels=labels)
box()
dev.off()


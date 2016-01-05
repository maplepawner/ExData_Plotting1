png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
power = read.table("household_power_consumption.txt",header = TRUE, sep = ";")
globalactive <- power$Global_active_power
voltage <- power$Voltage
reactivepower <-power$Global_reactive_power

plot.ts(globalactive, ylab="Global Active Power", xlab="",axes=FALSE)
axis(side=2, labels=TRUE)
tick <- c(0, 1440, 2880)
labels<- c("Thu","Fri","Sat")
axis(side=1,at=tick,labels=labels)
box()

plot.ts(voltage, ylab="Voltage", xlab="datetime",axes=FALSE)
axis(side=2, labels=TRUE)
tick <- c(0, 1440, 2880)
labels<- c("Thu","Fri","Sat")
axis(side=1,at=tick,labels=labels)
box()

plot.ts(power$Sub_metering_2, ylab="Energy Sub Metering",xlab="",axes=FALSE,col="red",ylim=c(0,30))
par(new = TRUE)
plot.ts(power$Sub_metering_3,ylab="",xlab="",axes=FALSE,col="blue",ylim=c(0,30))
par(new = TRUE)
plot.ts(power$Sub_metering_1,ylab="",xlab="",axes=FALSE)
axis(side=2, labels=TRUE)
tick <- c(0, 1440, 2880)
labels<- c("Thu","Fri","Sat")
axis(side=1,at=tick,labels=labels)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty = "n",cex=.8)
box()

plot.ts(reactivepower, ylab="Global_reactive_power", xlab="datetime",axes=FALSE)
axis(side=2, labels=TRUE)
tick <- c(0, 1440, 2880)
labels<- c("Thu","Fri","Sat")
axis(side=1,at=tick,labels=labels)
box()

dev.off()

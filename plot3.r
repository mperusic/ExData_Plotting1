x<-read.csv("household_power_consumption.txt", header = T, sep = ";")
y <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")

y$dt <- strptime(paste(y$Date, y$Time), "%d/%m/%Y %H:%M:%S")

Sys.setlocale(locale = "C")

png("plot3.png")
plot(x=(y$dt),y=y$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(x=(y$dt),y=y$Sub_metering_2,col="red")
lines(x=(y$dt),y=y$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"))

dev.off()
Sys.setlocale(locale = "")
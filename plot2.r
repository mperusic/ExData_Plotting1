x<-read.csv("household_power_consumption.txt", header = T, sep = ";")
y <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")

Sys.setlocale(locale = "C")

png("plot2.png")

y$day <- strptime(paste(y$Date, y$Time), "%d/%m/%Y %H:%M:%S")

plot(y$day,as.numeric(type.convert(as.character(y$Global_active_power), dec = ".")), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
Sys.setlocale(locale = "")


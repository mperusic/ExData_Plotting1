x<-read.csv("household_power_consumption.txt", header = T, sep = ";")
y <- subset(x, x$Date == "1/2/2007" | x$Date == "2/2/2007")
png("plot1.png")

hist(as.numeric(type.convert(as.character(y$Global_active_power), dec = ".")), main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()

# Plot 4

data <- read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";", colClasses = "character")
target <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
data1 <- data[target,]
datetime <- as.POSIXlt(paste(data1[,1],data1[,2]), format="%d/%m/%Y %H:%M:%S")

png(file = "plot4.png") 
par(mfrow = c(2,2))
plot(datetime,data1$Global_active_power, type="l", xlab = "", ylab = "Global Active Power")
plot(datetime,data1$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
plot(datetime,data1$Sub_metering_1,type="l", xlab = "", ylab = "Energy sub metering ")
points(datetime,data1$Sub_metering_2, type = "l", col="red")
points(datetime,data1$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(datetime,data1$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off() 
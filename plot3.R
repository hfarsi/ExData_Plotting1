# Plot 3

data <- read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";", colClasses = "character")
target <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
data1 <- data[target,]
datetime <- as.POSIXlt(paste(data1[,1],data1[,2]), format="%d/%m/%Y %H:%M:%S")

png(file = "plot3.png") 
plot(datetime,data1[,7],type="l", xlab = "", ylab = "Energy Sub metering ")
points(datetime,data1[,8], type = "l", col="red")
points(datetime,data1[,9], type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off() 
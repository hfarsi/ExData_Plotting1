# Plot 2

data <- read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";", colClasses = "character")
target <- data$Date == "1/2/2007" | data$Date == "2/2/2007"

data1 <- data[target,]
datetime <- as.POSIXlt(paste(data1[,1],data1[,2]), format="%d/%m/%Y %H:%M:%S")

png(file = "plot2.png") 
plot(datetime,data1$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.off() 
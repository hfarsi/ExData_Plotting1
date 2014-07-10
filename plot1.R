# Plot 1

data <- read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep = ";", colClasses = "character")
target <- data$Date == "1/2/2007" | data$Date == "2/2/2007"
data1 <- data[target,]

png(file = "plot1.png")
hist(as.numeric(data1[,3]), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off() 
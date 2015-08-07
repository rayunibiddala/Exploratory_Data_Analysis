# Usage 
# Code expects data file in folder './week1/exdata-data-household_power_consumption/household_power_consumption.txt'
# To run: source ("./week1/plot4.r")

source ("./week1/load_data.r")

# create png size 480 x 480
png("plot4.png", width = 480, height = 480)

# number of plots per row, column 
par (mfrow = c(2,2))

# c(1,1) 
plot (data_in_need$Time, data_in_need$Global_active_power, 
      type = "l", 
      xlab = "", 
      ylab = "Global Active Power")

# c(1,2)
plot (data_in_need$Time, data_in_need$Voltage, 
      type = "l", 
      xlab = "datetime", 
      ylab = "Voltage")

# c(2,1)  
plot (data_in_need$Time, data_in_need$Sub_metering_1, 
      type = "l", 
      xlab = "", 
      col = "black",
      ylab = "Energy sub metering")

lines(data_in_need$Time, data_in_need$Sub_metering_2, col = "red")
lines(data_in_need$Time, data_in_need$Sub_metering_3, col = "blue")
# add legend 
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# c(2,2)  
plot (data_in_need$Time, data_in_need$Global_reactive_power, 
      type = "l", 
      xlab = "datetime", 
      ylab = "Global_reactive_power")

# close PNG device 
dev.off()

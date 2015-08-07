# Usage 
# Code expects data file in folder './week1/exdata-data-household_power_consumption/household_power_consumption.txt'
# To run: source ("./week1/plot3.r")

source ("./week1/load_data.r")

# create png size 480 x 480
png("plot3.png", width = 480, height = 480)

# draw plot  
plot (data_in_need$Time, data_in_need$Sub_metering_1, 
      type = "l", 
      xlab = "", 
      col = "black",
      ylab = "Energy sub metering")

lines(data_in_need$Time, data_in_need$Sub_metering_2, col = "red")
lines(data_in_need$Time, data_in_need$Sub_metering_3, col = "blue")
# add legend 
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
# close PNG device 
dev.off()

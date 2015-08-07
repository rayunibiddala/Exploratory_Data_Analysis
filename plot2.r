source ("./week1/load_data.r")

# create png size 480 x 480
png("plot2.png", width = 480, height = 480)
# draw plot  
plot (data_in_need$Time, data_in_need$Global_active_power, 
      type = "l", 
      xlab = "", 
      ylab = "Global Active Power (kilowatts)")
# close PNG device 
dev.off()

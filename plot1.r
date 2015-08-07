source ("./week1/load_data.r")

# create png size 480 x 480
png("plot1.png", width = 480, height = 480)
# draw histogram 
hist (data_in_need$Global_active_power, 
      xlab = "Global Active Power (kilowatts)", 
      ylab = "Frequency", 
      col = "red", 
      main="Global Active Power")
# close PNG device 
dev.off()


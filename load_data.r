load_data <- function () {
   # load data from source file 
   data = read.table("./week1/exdata-data-household_power_consumption/household_power_consumption.txt",sep=";", header=TRUE, na.strings = "?")
   # filter data for dates '1/2/2007' & '2/2/2007'
   data_in_need <- subset(data, as.Date (data$Date, '%d/%m/%Y') %in% as.Date(c('1/2/2007', '2/2/2007'), '%d/%m/%Y'))
   #use strptime for time column 
   data_in_need$Time <- strptime(paste (data_in_need$Date, data_in_need$Time), '%d/%m/%Y %H:%M:%S')
   
   return (data_in_need)
}
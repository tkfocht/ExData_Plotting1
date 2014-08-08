source("parse_data.R")

create_plot3 <- function(filename) {
  data <- read_data(filename)
  
  png(filename = "plot3.png",
      width = 480,
      height = 480)
  
  with(data, plot(Time, Sub_metering_1,
                  type = "l",
                  col = "black",
                  ylab = "Energy sub metering",
                  xlab = ""))
  with(data, lines(Time, Sub_metering_2, col="red"))
  with(data, lines(Time, Sub_metering_3, col="blue"))
  legend("topright",
         lty = c(1, 1, 1),
         col = c("black", "red", "blue"),
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  dev.off()
}

#This assumes the data is in the file 'household_power_consumption.txt'
#in the active directory
create_plot3("household_power_consumption.txt")
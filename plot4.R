source("parse_data.R")

create_plot4 <- function(filename) {
  data <- read_data(filename)
  
  png(filename = "plot4.png",
      width = 480,
      height = 480)

  par(mfrow = c(2,2))
  with(data, {
    plot(Time, Global_active_power, type="l",
         xlab = "", ylab = "Global Active Power")
    plot(Time, Voltage, type="l",
         xlab = "datetime",
         ylab = "Voltage")
    plot(Time, Sub_metering_1, type="l",
         xlab = "",
         ylab = "Energy sub metering",
         col = "black")
    lines(Time, Sub_metering_2, col = "red")
    lines(Time, Sub_metering_3, col = "blue")
    legend("topright",
           bty = "n",
           lty = c(1, 1, 1),
           col = c("black", "red", "blue"),
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Time, Global_reactive_power, type="l",
         xlab = "datetime",
         ylab = "Global_reactive_power")
  })
  
  dev.off()
}

#This assumes the data is in the file 'household_power_consumption.txt'
#in the active directory
create_plot4("household_power_consumption.txt")
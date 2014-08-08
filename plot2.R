source("parse_data.R")

create_plot2 <- function(filename) {
  data <- read_data(filename)

  png(filename = "plot2.png",
      width = 480,
      height = 480)
  
  plot(d$Time, d$Global_active_power,
       type = "l",
       xlab = "",
       ylab = "Global Active Power (kilowatts)")
  
  dev.off()
}

#This assumes the data is in the file 'household_power_consumption.txt'
#in the active directory
create_plot2("household_power_consumption.txt")
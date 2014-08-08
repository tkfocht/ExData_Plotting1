source("parse_data.R")

create_plot1 <- function(filename) {
  data <- read_data(filename)
  
  png(filename = "plot1.png",
      width = 480,
      height = 480)
  hist(d$Global_active_power,
       col="red",
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       ylab = "Frequency")
  dev.off()
}

#This assumes the data is in the file 'household_power_consumption.txt'
#in the active directory
create_plot1("household_power_consumption.txt")
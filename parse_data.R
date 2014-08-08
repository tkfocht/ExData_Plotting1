read_data <- function(filename) {
  date_subset <- as.Date(c("2007-02-01","2007-02-02"), format = "%Y-%m-%d")
  
  #Read the text data
  data <- read.table(filename, header=TRUE, sep=";",
                     na.strings = "?")
  
  #Format dates correctly and subset to just the data needed
  data <- transform(data, Date = as.Date(Date, format = "%d/%m/%Y"))
  data <- data[data$Date %in% date_subset,]
  data <- transform(data, Time = strptime(
    paste(as.character(Date), Time), format = "%Y-%m-%d %H:%M:%S"))
  
  return(data)
}
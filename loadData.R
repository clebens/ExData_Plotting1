loadData <- function() {
  classes <- c(rep("character", times=2), rep("numeric", times=7))
file = "./household_power_consumption.txt"
skipRows = 66637
n = (60*24*2)
sep = ";"
headers <- c(t(read.table(file,
                    sep=";",
                    nrows=1,
                    header=FALSE)))

data <- read.table(file, 
                      sep =";", 
                      skip=skipRows,
                      nrows=n,
                      na.strings = "?",
                      colClasses = classes,
                      header=FALSE)

names(data) <- headers
data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
data <- subset(data, select = -c(1, 2))
data
}
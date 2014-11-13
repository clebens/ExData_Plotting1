# Load Data
source("./loadData.R")
powerCons <- loadData()

png('plot2.png',
    height = 480,
    width = 480,
    units = "px")

plot(powerCons$DateTime, 
     powerCons$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type="l")

dev.off()
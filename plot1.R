# Load Data
source("./loadData.R")
powerCons <- loadData()

png('plot1.png',
    height = 480,
    width = 480,
    units = "px")

hist(powerCons$Global_active_power, 
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()
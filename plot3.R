# Load Data
source("./loadData.R")
powerCons <- loadData()

png('plot3.png',
     height = 480,
     width = 480,
     units = "px")

plot(powerCons$DateTime, 
          powerCons$Sub_metering_1, 
          xlab = "",
          ylab = "Energy Sub Metering",
          type="l",
          col="black")

lines(powerCons$DateTime, 
      powerCons$Sub_metering_2, type="l", col="red")


lines(powerCons$DateTime, 
      powerCons$Sub_metering_3, type="l", col="blue")

legend(x ="topright", 
       legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"),
       lwd=1)
      
dev.off()
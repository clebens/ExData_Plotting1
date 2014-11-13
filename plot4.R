# Load Data (Note I separated this logic into loadData.R to avoid reusing code...)
source("./loadData.R")
powerCons <- loadData()

png('plot4.png',
     height = 480,
     width = 480,
     units = "px")

par (mfrow = c(2, 2))

with(powerCons, {
  plot(powerCons$DateTime, 
       powerCons$Global_active_power, 
       xlab = "",
       ylab = "Global Active Power (kilowatts)",
       type="l",
       col="black")
  plot(powerCons$DateTime, 
       powerCons$Voltage, 
       xlab = "",
       ylab = "Voltage",
       type="l",
       col="black")

  
    plot(powerCons$DateTime, 
        powerCons$Sub_metering_1, 
        xlab = "datetime",
        ylab = "Global Active Power (kilowatts)",
        type="l",
        col="black")
   
    lines(powerCons$DateTime, 
         powerCons$Sub_metering_2, type="l", col="red")
   
   
    lines(powerCons$DateTime, 
         powerCons$Sub_metering_3, type="l", col="blue")
   
    legend(x ="topright", 
          legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          col=c("black", "red", "blue"),
          lwd=1,
          bty = "n")
  
    plot(powerCons$DateTime, 
       powerCons$Global_ractive_power, 
       xlab = "datetime",
       ylab = "Global_ractive_power",
       type="l",
       col="black")
})
      
dev.off()
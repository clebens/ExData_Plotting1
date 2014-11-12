function(file, skipRows, n, sep, na.str="NA") {
  classes <- c(rep("character", times=2), rep("numeric", times=7))
  
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
  data
}

# Read and Format the Data into a nice format...

powerCons <- readSelectionAndHeaders("./household_power_consumption.txt", rowsToSkip, rowsToRead, ";")
powerCons$DateTime <- as.POSIXct(paste(powerCons$Date, powerCons$Time), format="%d/%m/%Y %H:%M:%S")
powerCons <- subset(powerCons, select = -c(1, 2))
powerCons
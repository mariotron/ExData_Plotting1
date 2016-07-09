setwd("C:/Users/malozanog/Documents/GitHub/ExData_Plotting1")

source("load_data.R")

plot3 <- paste(getwd(), "/plots/plot3.png", sep = "")
if(!file.exists(plot3)){
  png("plots/plot3.png", width = 480, height = 480)
  plot(loaddata$Time, loaddata$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(loaddata$Time, loaddata$Sub_metering_2, type="l", col="red")
  lines(loaddata$Time, loaddata$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  dev.off()
} else {
  plot(loaddata$Time, loaddata$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(loaddata$Time, loaddata$Sub_metering_2, type="l", col="red")
  lines(loaddata$Time, loaddata$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}


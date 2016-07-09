
setwd("C:/Users/malozanog/Documents/GitHub/ExData_Plotting1")

source("load_data.R")

plot2 <- paste(getwd(), "/plots/plot2.png", sep = "")
if(!file.exists(plot2)){
  png("plots/plot2.png", width = 480, height = 480)
  plot(loaddata$Time, loaddata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(loaddata$Time, loaddata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}

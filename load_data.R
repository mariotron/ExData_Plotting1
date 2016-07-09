setwd("C:/Users/malozanog/Documents/GitHub/ExData_Plotting1") 

library(httr) 

link <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data <- "data"
if(!file.exists(data)){
  dir.create(data)
} 
plots <- "plots" 
if(!file.exists(plots)){
  dir.create(plots)
}
datafile <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")
if(!file.exists(datafile)){
  download.file(link, datafile, method="auto", mode="wb")
}
datafile2 <- paste(getwd(), "/data/household_power_consumption.txt", sep = "")
if(!file.exists(datafile2)){
  unzip(datafile, list = FALSE, overwrite = FALSE, exdir = data)
}

data2 <- paste(getwd(), "/data/data2.rds", sep = "")
if(!file.exists(data2)){
  data <- "data/household_power_consumption.txt"
  loaddata <- read.table(data, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  loaddata$Time <- strptime(paste(loaddata$Date, loaddata$Time), "%d/%m/%Y %H:%M:%S")
  loaddata$Date <- as.Date(loaddata$Date, "%d/%m/%Y")
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  loaddata <- subset(loaddata, Date %in% dates)
  data2 <- paste(getwd(), "/", "data", "/", "data2", ".rds", sep="")
  saveRDS(loaddata, data2)
} else {
  data <- "data/data2.rds"
  loaddata <- readRDS(data)
}

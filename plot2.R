powerConsumptionBaseFile <- "./data/household_power_consumption.txt"
data <- read.table(powerConsumptionBaseFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
powerConsumptionData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(powerConsumptionData$Date, powerConsumptionData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(powerConsumptionData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
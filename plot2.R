data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
d<-paste(subSetData$Date, subSetData$Time)
datetime <- strptime(d,"%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png")
plot(datetime,globalActivePower,type="l",xlab="",ylab="Global ActivePower(killowatts)")
dev.off()

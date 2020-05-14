source("load.R")

hist(t$Global_active_power,col="red",main="Global Active Power"
     ,ylab="Frequency",xlab="Global Active Power (kilowatts")
dev.print(png, file = "plot1.png", width = 480, height = 480)

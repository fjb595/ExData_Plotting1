source("load.R")

with(t,plot(DateTime,Global_active_power,type="l",
            ylab="Global Active Power (kilowatts)",xlab=""))
dev.print(png, file = "plot2.png", width = 480, height = 480)
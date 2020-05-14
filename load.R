# note: the vroom package must be installed prior to execution
library(vroom)
library(dplyr)

# download and expand archive containing dataset if necessary
if (!file.exists("household_power_consumption.txt")) {
  if (!file.exists("epc.zip")) 
      download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                    "epc.zip", method="curl")
  unzip("epc.zip")
}

# read, filter and add a column for combined date and time
t<-vroom( "household_power_consumption.txt", col_names=TRUE,
           col_types=cols(Date=col_datetime(format="%d/%m/%Y"),
                          Time=col_time(format="%H:%M:%S")), na="?") %>% 
   filter(Date>"2007-01-31",Date<="2007-02-02") %>% mutate(DateTime=Date+Time)

# cleanup any open device and reset par to defaults
dev.off()



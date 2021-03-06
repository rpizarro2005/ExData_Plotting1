# house <- read.table("household_power_consumption.txt")
# str(house)
# 'data.frame':   2075260 obs. of  1 variable:
# $ V1: Factor w/ 2075260 levels "1/1/2007;00:00:00;2.580;...

# house <- read.table("household_power_consumption.txt", sep = ";", header=TRUE, nrows=3)
# Date     Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
# 1  16/12/2006 17:24:00               4.216                 0.418  234.84             18.4              0              1             17
# 2  16/12/2006 17:25:00               5.360                 0.436  233.63             23.0              0              1             16
# 3  16/12/2006 17:26:00               5.374                 0.498  233.29             23.0              0              2             17

# Skiping 66.637 rows we are at 1/2/2007 00:00:00
# Then, (24*60*2 = 2880) and we are at 2/2/2007 23:59:00

 house <- read.table("household_power_consumption.txt", sep = ";", nrows = 2880, skip = 66637)
 hist(house$V3, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
 dev.copy(png, file = "plot1.png")
 dev.off()
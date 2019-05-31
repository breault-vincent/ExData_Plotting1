# In case this file is run by itself, try to set up environment.
source('setup.R')
# Set up PNG graphics device
png("plot2.png", width=480, height=480)
# Make line graph for datetime and Global_active_power, x label should be empty, no title
with(subsetted, plot(datetime, Global_active_power, type = 'l', 
                     xlab = '', ylab = 'Global Active Power (kilowatts)'))
# Don't forget to close the device!
dev.off()
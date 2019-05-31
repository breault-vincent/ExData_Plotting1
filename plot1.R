# In case this file is run by itself, try to set up environment.
source('setup.R')
# Set up PNG graphics device
png("plot1.png", width=480, height=480)
# Create simple histogram
hist(subsetted$Global_active_power, main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)', col = 'red')
# Don't forget to close the device!
dev.off()
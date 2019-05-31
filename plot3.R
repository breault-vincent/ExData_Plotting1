# In case this file is run by itself, try to set up environment.
source('setup.R')
# Set up PNG graphics device
png("plot3.png", width=480, height=480)
# Create line plot for first line. X label should be empty, no title
with(subsetted, plot(datetime, Sub_metering_1, type = 'l', 
     xlab = '', ylab = 'Energy sub metering'))
# Add the other two sub metering lines
with(subsetted, lines(datetime, Sub_metering_2, col = 'red'))
with(subsetted, lines(datetime, Sub_metering_3, col = 'blue'))
# Add legend for the lines with proper colour
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = 1, col = c('black', 'red', 'blue'))
# Don't forget to close the device!
dev.off()
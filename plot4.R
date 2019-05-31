# In case this file is run by itself, try to set up environment.
source('setup.R')
# Set up PNG graphics device
png("plot4.png", width=480, height=480)
# Set up graph layout
par(mfrow=c(2,2))
# Add first graph, similar to graph1.R
with(subsetted, plot(datetime, Global_active_power, type = 'l', 
                     xlab = '', ylab = 'Global Active Power'))
# Second graph
with(subsetted, plot(datetime, Voltage, type = 'l'))
# Third graph, similar to graph3.R
with(subsetted, plot(datetime, Sub_metering_1, type = 'l', 
                     xlab = '', ylab = 'Energy sub metering'))
with(subsetted, lines(datetime, Sub_metering_2, col = 'red'))
with(subsetted, lines(datetime, Sub_metering_3, col = 'blue'))
legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = 1, col = c('black', 'red', 'blue'), bty = 'n')
# Last graph, we're done! 
with(subsetted, plot(datetime, Global_reactive_power, type = 'l', lwd = 0.5))
# Don't forget to close the device!
dev.off()
# Check to see if the environment is already setup.
if (!exists("subsetted")){
  # Get path to data file
  destfile <- "./data/household_power_consumption.txt" 
  # Read data into table
  data <- read.table(destfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = '?')
  # Subset data into relevant dates
  subsetted <- subset(data, data$Date == '1/2/2007' | data$Date == "2/2/2007")
  # Add datetime column to dataframe for making graphs
  subsetted$datetime <- strptime(paste(subsetted$Date, subsetted$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
}
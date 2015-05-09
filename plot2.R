# Author: Peter May
#
# Generates plot 2. Line graph of Global Active Power over time
#
# Note: Ensure datadir (in initialise.R) is set to an appropriate directory 
#       for storing the downloaded data file.
#

# Download the raw data and load it into the environment ready for use
source("initialise.R")

# Open a PNG device to write to
png("generated_plots/plot2.png")  # Default is 480 by 480px

# Draw Plot
plot(data$DateTime, data$Global_active_power,
     main="",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     type="n")
lines(data$DateTime, data$Global_active_power)


# Close the PNG device
dev.off()
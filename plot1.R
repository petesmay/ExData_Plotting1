# Author: Peter May
#
# Generates plot 1. Histogram of Global Active Power.
#
# Note: Ensure datadir (in initialise.R) is set to an appropriate directory 
#       for storing the downloaded data file.
#

# Download the raw data and load it into the environment ready for use
source("initialise.R")

# Open a PNG device to write to
png("generated_plots/plot1.png")  # Default is 480 by 480px

# Draw Histogram
hist(data$Global_active_power,
     col="Red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")


# Close the PNG device
dev.off()
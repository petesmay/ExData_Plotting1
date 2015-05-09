# Author: Peter May
#
# Generates plot 3. Line graph of Energy Sub Metering over time
#
# Note: Ensure datadir (in initialise.R) is set to an appropriate directory 
#       for storing the downloaded data file.
#

# Download the raw data and load it into the environment ready for use
source("initialise.R")

# Open a PNG device to write to
png("generated_plots/plot3.png")  # Default is 480 by 480px

# Draw Plot
plot(data$DateTime, data$Sub_metering_1,
     main="",
     xlab="",
     ylab="Energy sub metering",
     type="n")
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col="Red")
lines(data$DateTime, data$Sub_metering_3, col="Blue")

# Add the legend
legend("topright",
       legend=names(data)[7:9],
       col=c("Black", "Red", "Blue"),
       lwd=c(1,1,1))


# Close the PNG device
dev.off()
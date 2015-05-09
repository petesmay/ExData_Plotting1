# Author: Peter May
#
# Generates plot 4. 2x2 matrix of line graphs
#
# Note: Ensure datadir (in initialise.R) is set to an appropriate directory 
#       for storing the downloaded data file.
#

# Download the raw data and load it into the environment ready for use
source("initialise.R")

# Open a PNG device to write to
png("generated_plots/plot4.png")  # Default is 480 by 480px

# create 2x2 plot
par(mfcol=c(2,2))

# TOP LEFT
# Line Graph of Global Active Power over time (plot 2)
plot(data$DateTime, data$Global_active_power,
     main="",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     type="n")
lines(data$DateTime, data$Global_active_power)

# BOTTOM LEFT
# Energy Sub Metering over time (plot 3)
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
       lwd=c(1,1,1),
       bty="n")

# TOP RIGHT
# Voltage over time
plot(data$DateTime, data$Voltage,
     main="",
     xlab="datetime",
     ylab="Voltage",
     type="n")
lines(data$DateTime, data$Voltage)

# BOTTOM RIGHT
# Global Reactive Power over time
plot(data$DateTime, data$Global_reactive_power,
     main="",
     xlab="datetime",
     ylab="Global_reactive_power",
     type="n")
lines(data$DateTime, data$Global_reactive_power)


# Close the PNG device
dev.off()
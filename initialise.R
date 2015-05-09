# Author: Peter May
#
# Initialises the data directory, ready for processing the R files.
#
# User must set datadir to their preferred location for storing the
# downloaded data file
#
# Structure of this script:
#  - User Variables
#  - Helper functions
#  - Initialisation Scripts

#############################################
# Variables
fileurl  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
datadir  <- "C:/Data/Coursera/4_Exploratory_Data_Analysis/data"
destfile <- paste(datadir, "exdata-data-household_power_consumption.zip", sep="/")
datafile <- paste(datadir, "household_power_consumption.txt", sep="/")

#############################################
# Helper Functions
DownloadRaw = function(){
  # If not already present, downloads the raw data and unzips it
  # Args: none
  # Returns: nothing
  
  # Check data directory exists, if not, create
  if (!file.exists(datadir)){
    dir.create(datadir, recursive=TRUE)
  }
  
  ## Download data and unzip if we haven't done so already
  if (!file.exists(destfile)){
    download.file(fileurl, destfile=destfile)
    datedownloaded <- date()
    unzip(destfile, exdir=datadir)
  }
}

LoadSubsetData = function(){
  # Loads the relevant subset of data into the global environment.
  # Data for days 1/2/2007 and 2/2/2007
  # 1/2/2007 starts at line 66638 for 1440 rows (to row 68077)
  # 2/2/2007 starts at line 68078 for 1440 rows (to row 69517)
  # nrows = 69517 - 66638 = 2879
  # Args: None
  # Returns: <data.frame> data
  
  # First read the header to use in the subsetted data.frame
  smalltab <- read.table(datafile, header=TRUE, sep=";", nrows=1)
  header <- names(smalltab)
  
  # Now read in the relevant dates from the data file
  data <- read.table(datafile, sep=";", col.names=header, skip=66638, nrows=2879)
  
  # Convert Date/Time columns to Date/Time classes
  data$DateTime <- paste(data$Date, data$Time)
  data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
  
  return (data)
}

#############################################
# Initialisation Scripts

DownloadRaw()             # Download raw data and extract out
data <- LoadSubsetData()  # Load the data for 1/2/2007 and 2/2/2007
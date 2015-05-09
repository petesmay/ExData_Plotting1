## Study Design

### Summary Choices

#### Subset of Data
The original data has been subset to only 1/2/2007 and 2/2/2007. This subset
of data is loaded through the initialise.R script based on the following
calculations (determined through grep calls):
1/2/2007 starts at line 66638 for 1440 rows (to row 68077)
2/2/2007 starts at line 68078 for 1440 rows (to row 69517)
nrows = 69517 - 66638 = 2879

#### Variable Labels
Variable labels have not been adjusted from original data.

#### DateTime Variable
The Date and Time variables have been combined into one variable called
"DateTime" (classes POSIXlt/POSIXt) to aid time series chart generation.

The original Date and Time variables have not been removed.

## Code Book

### Column 1: Date
Factor
Date in format dd/mm/yyyy

### Column 2: Time
Factor
Time in format hh:mm:ss

### Column 3: Global_active_power
Numeric
Household global minute-averaged active power (in kilowatt)

### Column 4: Global_reactive_power
Numeric
Household global minute-averaged reactive power (in kilowatt)

### Column 5: Voltage	
Numeric
Minute-averaged voltage (in volt)

### Column 6: Global_intensity
Numeric
Household global minute-averaged current intensity (in ampere)

### Column 7: Sub_metering_1
Numeric
Energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

### Column 8: Sub_metering_2
Numeric
Energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

### Column 9: Sub_metering_3
Numeric
Energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

### Column 10: DateTime
POSIXlt POSIXt
Combination of Date and Time columns in DateTime format
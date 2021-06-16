# Deliverable 1
# 3.Load the dplyr package.
library(dplyr)

## 4.Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")


# 5. Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +  AWD, data = MechaCar_mpg)

# 6.Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +  AWD, data = MechaCar_mpg))
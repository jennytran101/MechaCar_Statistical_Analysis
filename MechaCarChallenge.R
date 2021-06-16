# Deliverable 1
# 3.Load the dplyr package.
library(dplyr)

## 4.Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv")


# 5. Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +  AWD, data = MechaCar_mpg)

# 6.Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +  AWD, data = MechaCar_mpg))

# Deliverable 2
# 2. Import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read.csv("Suspension_Coil.csv")

# 3. Creates a total_summary dataframe 
total_summary <- Suspension_Coil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# 4. Creates a lot_summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), SD=sd(PSI), .groups = 'keep')
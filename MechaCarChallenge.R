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

# Deliverable 3
# 1. determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(Suspension_Coil$PSI, mu=1500)

# 2. determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
  #Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)

  # Lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)

  # Lot3
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)










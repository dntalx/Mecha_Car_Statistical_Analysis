# Deliverable 1

# Load library
library(dplyr)

# Import csv
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) 

# Summary statistic on linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))



# Deliverable 2

# Import csv and read table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Statistic summary using summarize
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# Statistic summary using group_by
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')



# Deliverable 3

# t-test for all lots with population mean of 1500 psi
t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))

# t-test for Lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for Lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot2"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot=="Lot3"),mu=mean(Suspension_Coil$PSI))
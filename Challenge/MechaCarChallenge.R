# Deliverable 1

# D1.1: Download the MechaCar_mpg.csv file, and place it in the active directory for your R session
# D1.2: Create a new RScript in your R source pane, name it MechaCarChallenge.RScript, and save it to your active directory

# D1.3: Use the library() function to load the dplyr package
library(dplyr)

# D1.4: Import and read in the MechaCar_mpg.csv file as a dataframe.
mechcar <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# D1.5: Perform linear regression using the lm() function with all columns 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechcar)

# D1.6: Using the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechcar)
)

# Deliverable 2
# D2.1: Download the Suspension_Coil.csv file, and place it in the active directory for your R session

# D2.2: Import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# D2.3: Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI))

# D2.4: Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI))

# Deliverable 3
# D3.1: write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI,mu=1500)

# D3.2 using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)



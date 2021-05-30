# MechaCar_Statistical_Analysis

## Deliverable 1: Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
![Variable P Values]
* The P values tell us the probability that each variable/coefficient contributes to the variance to the model
  * In other words the higher the p value is, the higher the variable contributes to the variance
  * The lower the p value is, it means the variable(s) has an impact in predicting the dependent variable, as it provides a non-random amount of variance
* Looking at the p values, the intercept, vehicle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset
### Is the slope of the linear model considered to be zero? Why or why not?
![Model P Value]
* Null and Alternative Hypothesis for linear regression is as follows:
  * H0 : The slope of the linear model is zero, or m = 0
  * Ha : The slope of the linear model is not zero, or m ≠ 0
* The P value for our model is 5.35e-11 which is below the 'standard' 0.05 significance level therefore there is sufficient statistical evidence that our null hypothesis is not true, and therefore we would reject our null hypothesis
* Therefore, the slope of the linear model is not considered to be 0, as we have rejected H0 and 'accepted' Ha

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
![Model P Value]
* The 'multiple R-squared' value represents how well the model approximates real world data points
* With a 'multiple R-squared' value of 0.7149, we can say the linear model strongly predicts the mpg of MechaCar prototypes 

## Deliverable 2: Summary Statistics on Suspension Coils
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
![Variances]
* Using R, we imported the data and created the summary stats (mean, median, variance and standard deviation) 
* We can see that lot 3 does not meet this specification since it has a variance of ~170
* The other lots, as well as the variance on the total lots do meet the specification since they are under the 100 PSI threshold

## Deliverable 3: T-Tests on Suspension Coils
### Determine if the PSI across all manufacturing lots, and each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
![T-Test]
* T-tests can be used for hypothesis testing
  * H0: there isn't a significant difference from the mean
  * Ha: there is a significant difference from the mean
* Where the P value exceeds the level of significance (0.05), we cannot reject the null hypothesis and therefore there isn't a significant difference, and the inverse is also true
* Only lot 3 has a P value lower than the level of significance therefore we reject the null hypotheses for lot 3 and say there is a statistical difference from the population mean
* For the other 2 lots, as well as the total of the lots, there is not a statistical difference from the population mean since the P value exceeds the level of significance we cannot reject the null hypotheses

## Deliverable 4: Study Design -  MechaCar vs Competition

# MechaCar Analysis

## Overview

This project was created to help the production troubles AutosRUs' is having while manufacturing their new prototype.

## Linear Regression to Predict MPG

The dataset used for this part of the project had a sample size of 50 prototypes. The results for to the multiple linear regression can be seen below.

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Linear_Regression.png)

### Summary Linear Regression

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Summary_LR.png)

When looking at the summary of our multiple linear regression we can see a few things:

* Out of the five variables that we looked at, only two provided a non-random amount of variance to the mpg values. These were vehicle length and ground clearnce due to both having a p-value less than .05. 

* The slope of the linear model is not zero due to the fact that the indipendent value for all five variables does not equal zero. 

* This model can be used to predict mpg of the prototype becase the R-squared value is .71. This means that the model can correctly predict 70% of the time the mpg of the the prototype. 

## Summary Statistics on Suspension Coil

When looking at the of the variance suspension coil to make sure they don't exceed 100 pounds per square inch (PSI), we used a dataset with 150 vehicle IDs in three different lots and looked at the PSI for each vehicle.

# Total Summary 

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Total_Summary.png)

When looking at the total summary table, we see that the variance for the PSI is 62.29. This means that in general, the prototypes meet the design specifications. However, we need to take a closer look to see if this general view of the suspension coil is true to the manufacturin lots. 

# Lot Summary

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Lot_Summary.png)

If we take a look at the "Variance" column for all three lots, we can see that the first two lots meet the expectation of the suspension coils not exceeding the 100 PSI. On the other hand, Lot 3 has a variance of 170 PSI. This means that the cars from Lot 3 do not meet expectations and the manufacturing lot should be inspected to understand why the prototypes are coming out with an excedding PSI. 

## T-Tets on Supension Coils

To see if all the lots and each individual lot are statistically different from the population mean of 1,500 PSI, we ran t-tests on all the lots together and then on each individual lot to make sure their p-values were over .05.

### T-Test on all Lots

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/All_Lots_t-test.png)

### T-Test of Lot 1

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Lot1_t-test.png)

### T-Testing Lot 2

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Lot2_t-test.png)

### T-Testing Lot 3

![alt text](https://github.com/dntalx/Mecha_Car_Statistical_Analysis/blob/main/Resources/Lot3_t-test.png)

## Study Design: MechaCar vs Competition

To make sure MechaCar is a good choice for consumers compared to its competiton, we can also look at cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

To start, we can focus on one of the previously metrics mentioned, such as fuel efficeincy. Our null hypothesis could be that the fuel efficiency mean accross similar types of cars from differnet competitors is the same.

In order to test our null hypithesis, we can use an ANOVA test by using the different cars accorss the industry (categorical data) as our independent variable and the fuel efficeincy for each car (numerical and continuous data) as our dependent variable.

To do the ANOVA test, we will need data from different car manufacturesrs with cars similar to the MechaCar that includes their fuel efficiency. 

##USED this video for reference:
#https://www.youtube.com/watch?v=PnFJfuJ83NI&t=4916s
#here is the associate github repo for this workshop: https://github.com/walkerke/umich-workshop/tree/main

## ----intall-packages---------------------------------------------
install.packages(c("tidycensus", "tidyverse"))
library(tidycensus)
library(tidyverse)

## ----api-key------------------------------------------------------

census_api_key("79228800336c994c7a0d27bc28d866b9cbac3fe1", install = TRUE)

## ----Getting DP 03 data profile-----------------------------
#this did not work: DP_03_variables <- c("DP03_0119E","DP03_0120E", "DP03_0121E","DP03_0122E","DP03_0123E","DP03_0124E", "DP03_0125E", "DP03_0126E", "DP03_0127E", "DP03_0128E", "DP03_0129E", "DP03_0130E", "DP03_0131E", "DP03_0132E", "DP03_0133E", "DP03_0134E", "DP03_0135E", "DP03_0136E", "DP03_0137E")

DP_03_2022 <- get_acs(geography = "county", 
                    variables = c("DP03_0119E","DP03_0120E", "DP03_0121E","DP03_0122E","DP03_0123E","DP03_0124E", "DP03_0125E", "DP03_0126E", "DP03_0127E", "DP03_0128E", "DP03_0129E", "DP03_0130E", "DP03_0131E", "DP03_0132E", "DP03_0133E", "DP03_0134E", "DP03_0135E", "DP03_0136E", "DP03_0137E"),
                    year = 2022,
                    survey = "acs5", 
                    state = "AZ", 
                    geometry = TRUE)

DP_03
#I am getting NA values so I am going to check for year 2021

DP_03_2021 <- get_acs(geography = "county", 
                 variables = c("DP03_0119E","DP03_0120E", "DP03_0121E","DP03_0122E","DP03_0123E","DP03_0124E", "DP03_0125E", "DP03_0126E", "DP03_0127E", "DP03_0128E", "DP03_0129E", "DP03_0130E", "DP03_0131E", "DP03_0132E", "DP03_0133E", "DP03_0134E", "DP03_0135E", "DP03_0136E", "DP03_0137E"),
                 year = 2021,
                 survey = "acs5", 
                 state = "AZ",
                 geometry = TRUE)

DP_03_2021

## ----Viewing what I downloaded---------------


# Calling packages

library(ggplot2)
library(tidyverse)
library(WDI)


#Import the Dataset
ACLED <- read_csv("ACLED-AFRICA-FULL.csv")

#The next step will pull the event data and seperate them into groups by country
#First step: Generate a list of all countries represented in the data set

countries <- unique(ACLED[,15])

#Second Step: filter the data into sets representing each country we are looking at
#for the purposes of this exercises we'll look at the countries known to be effected 
#by Boko Haram

#Filter out events that had fatalities
fatal_ACLED <- dplyr::filter(ACLED, FATALITIES > 0)

#Filter by country
Chad <- filter(fatal_ACLED, COUNTRY == "Chad")
Niger <- filter(fatal_ACLED, COUNTRY == "Niger")
Nigeria <- filter(fatal_ACLED, COUNTRY == "Nigeria")
Cameroon <- filter(fatal_ACLED, COUNTRY == "Cameroon")


#Filtering out fatalities





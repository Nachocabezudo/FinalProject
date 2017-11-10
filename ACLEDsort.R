# Calling packages

library(ggplot2)
library(dplyr)
library(WDI)


#Import the Dataset
ACLED <- read_csv("ACLED-AFRICA-FULL.csv")

#Generate a list of countries that the data applies to
countries <- unique(ACLED[,15])

#Filter options

#Pull the information that we are most concerned with

ACLED_parsed <- ACLED %>% 
  select(EVENT_DATE, COUNTRY, YEAR, FATALITIES, LOCATION, LONGITUDE, LATITUDE) %>%
  dplyr::filter(FATALITIES > 0) #Filter out the non-fatal events

#Filter by country
Chad <- filter(fatal_ACLED, COUNTRY == "Chad")
Niger <- filter(fatal_ACLED, COUNTRY == "Niger")
Nigeria <- filter(fatal_ACLED, COUNTRY == "Nigeria")
Cameroon <- filter(fatal_ACLED, COUNTRY == "Cameroon")






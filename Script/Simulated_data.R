#### Preamble ####
# Purpose: Simulate the desire dataset and test it
# Author: Faustine Fan
# Date: 21 April 2023
# Contact: yx.fan@mail.utoronto.ca


#### Workspace set-up ####
library(tibble)
library(tidyverse)
library(dplyr)

###########dataset 1 ##########
simulated_data_1 <-
  tibble(
    year = seq(from = 1995, to = 2022, by = 1),
    Woman_ceo_percents = runif(
      n = 28,
      min = 0,
      max = 1)
    )

head(simulated_data_1)


###########dataset 2 ##########
simulated_data_2 <-
  tibble(
    year = seq(from = 1995, to = 2022, by = 1),
    Woman_university_presidents_percents = runif(
      n = 28,
      min = 0,
      max = 1)
  )

head(simulated_data_2)

###########dataset 3 ##########
simulated_data_3 <- 
  tibble(
  year = seq(from = 1995, to = 2022, by = 1),
  Highedu_female_percents = runif(n = 28, min = 0, max = 1),
  Highedu_male_percents = runif(n = 28, min = 0, max = 1)
) 

simulated_data_3 <- simulated_data_3 %>%
  mutate(Highedu_total_percents = Highedu_female_percents + Highedu_male_percents,
         Highedu_female_percents = Highedu_female_percents / Highedu_total_percents,
         Highedu_male_percents = Highedu_male_percents / Highedu_total_percents)

head(simulated_data_3)

###########dataset 4 ##########
simulated_data_4 <- 
  tibble(
    year = seq(from = 1995, to = 2022, by = 1),
    Woman_university_presidents_percents = runif(
      n = 28,
      min = 0,
      max = 0.8)
  )

head(simulated_data_4)
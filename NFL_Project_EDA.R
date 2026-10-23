# install packages
# install.packages("nflfastR")

# install.packages("tidyverse", type = "binary")
# install.packages("ggrepel", type = "binary")
# install.packages("nflreadr", type = "binary")
# install.packages("nflplotR", type = "binary")

# load libraries
library(nflfastR)
library(tidyverse)
library(ggrepel)
library(nflreadr)
library(nflplotR)


# load dataset for specific year
#nfl_data2019 <- load_pbp(2019) specific year

nfl_full <- load_pbp(1999:2021) # loading for years 1999-2021

# creates 4th down dataset full
FourDown_Full <- nfl_full %>% 
  filter(down == 4)

# creates 4th down Clean data
# Translation of your SQL query
FourDown_Clean <- FourDown_Full %>% 
  filter(str_to_lower(play_type) %in% c('punt', 'run', 'pass', 'field_goal'))




# Objective
# train 1999 - 2021, use 2022 and 2023 to pick best settings, use 2024 and 2025 for testing model
# Key variables: a
# Dillon: Setup datasets to 





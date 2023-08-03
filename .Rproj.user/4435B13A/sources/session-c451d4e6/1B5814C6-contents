install.packages("tidyverse")
library(tidyverse)
install.packages("SimDesign")
library("SimDesign")
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("knitr")

# Load all the data into dataframes
dailyActivity <- read_csv("dailyActivity_merged.csv")
sleepDay <- read_csv("sleepDay_merged.csv")
weightLogInfo <- read_csv("weightLogInfo_merged.csv")

# Checking structures of dataframes
str(dailyActivity)
str(sleepDay)
str(weightLogInfo)

# Remove duplicate entries
dailyActivity <- distinct(dailyActivity)
sleepDay <- distinct(sleepDay)
weightLogInfo <- distinct(weightLogInfo)

# Converting IDs to strings
dailyActivity$Id <- as.character(dailyActivity$Id)
sleepDay$Id <- as.character(sleepDay$Id)
weightLogInfo$Id <- as.character(weightLogInfo$Id)

# Removing "12:00:00 AM" timestamp from SleepDay column
sleepDay$SleepDay <- substr(sleepDay$SleepDay, start=1, stop=9)
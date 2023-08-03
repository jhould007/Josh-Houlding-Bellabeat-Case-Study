library(tidyverse)
install.packages("dplyr")
library(dplyr)
library(ggplot2)
dailyActivity <- group_by(dailyActivity, Id)

#Count how many days users manually tracked exercise
length(which(dailyActivity$LoggedActivitiesDistance != 0))

# Count how many users there are
length(which(dailyActivity$ActivityDate == "4/12/2016"))

# See how many days each user wore their Fitbit
# 31 total days, 33 users
Ids <- unique(dailyActivity$Id) %>%
  id_counts <- dailyActivity %>%
  filter(Id %in% Ids) %>%
  count(Id)

names(id_counts)[names(id_counts) == "n"] <- "daysWorn"

ggplot(data=id_counts) + 
  geom_bar(mapping=aes(x=Id, y=daysWorn, fill=daysWorn), stat="identity") +
  labs(title="Days each user wore their Fitbit", x="ID", y="Days Worn") + 
  theme(axis.text.x = element_text(angle = 90))


# See how many users wore their Fitbit to bed on each day
arrange(sleepDay, SleepDay)

# See how many users recorded their weight, and what % of recordings were manual
length(which(weightLogInfo$Id))

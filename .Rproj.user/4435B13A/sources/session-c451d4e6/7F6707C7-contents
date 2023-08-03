# Includes graph of # of users who wore Fitbits on each day, and calculation of avg % of users 
# who wore their Fitbits on any given day.  

library(dplyr)
library(ggplot2)

# 31 total days, 33 users

# Filter out rows with step_counts less than 0
filtered_data <- dailyActivity %>%
  filter(TotalSteps > 0)

# Group data by date and count the number of unique users
step_counts_by_date <- filtered_data %>%
  group_by(ActivityDate) %>%
  summarise(num_users = n_distinct(Id))

# Create the bar plot
ggplot(step_counts_by_date, aes(x = reorder(ActivityDate, num_users))) +
  geom_bar(mapping=aes(y=num_users), stat = "identity", fill = "blue", alpha = 0.7) + 
  annotate(geom="label", 12, 12, label="On average, 89.8% of users 
           wore their Fitbits on any given day.", fill="white") +
  labs(title = "Number of Users who wore their Fitbit on each day",
       x = "Date",
       y = "Number of Users") +
  theme(axis.text.x = element_text(angle = 90))

# Find what % of the time people were wearing their Fitbits overall
avg_users_per_day <- sum(step_counts_by_date$num_users)/31
overall_percent <- (avg_users_per_day/31)*100 
# Findings: On average, 89.8% of users were wearing their Fitbit device on any given day.
# This means that people not wearing them during the day isn't a problem. 

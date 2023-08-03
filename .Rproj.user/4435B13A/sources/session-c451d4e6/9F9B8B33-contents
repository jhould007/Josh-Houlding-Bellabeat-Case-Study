# Analysis of sleep data

library(dplyr)

# Find how many users out of 33 recorded their sleep at least once
num_sleep_users <- sleepDay %>%
  summarise(num_unique = n_distinct(Id))
print(num_sleep_users)
# Findings: 24/33 users recorded sleep at least once

# Find how many total sleep records were recorded by each user
total_sleep_records_per_id <- sleepDay %>%
  group_by(Id) %>%
  summarise(total_sleep_records = sum(TotalSleepRecords))
View(total_sleep_records_per_id)

# Create the bar plot
ggplot(total_sleep_records_per_id, aes(x=reorder(Id, total_sleep_records))) +
  geom_bar(mapping=aes(y=total_sleep_records), stat = "identity", fill = "purple", alpha = 0.7) + 
  annotate(geom="label", 18, 12, label="Only 15/33 users recorded more than
           10 sleep sessions.", fill="white") +
  labs(title = "Number of sleep records for each user",
       x = "User ID",
       y = "Number of Sleep Records") +
  theme(axis.text.x = element_text(angle = 90))

# Findings: Only 24/33 users recorded sleep, and of those, 9/24 recorded less than 10 sleep
# records during the 31-day period. 
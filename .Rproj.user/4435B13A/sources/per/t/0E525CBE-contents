library(tidyverse)
library(dplyr)

# Find the proportion of weight logs that are done manually
num_manual_weighs <- sum(weightLogInfo$IsManualReport == TRUE, na.rm = TRUE)
percent_manual_weighs <- (num_manual_weighs/67)*100
# Findings: 61% of weighs are done manually.

# Find how many total weigh-ins were done by each user
weigh_id_counts <- table(weightLogInfo$Id)
weigh_id_counts <- as.data.frame(weigh_id_counts)

# Create the bar plot
ggplot(weigh_id_counts, aes(x=reorder(Var1, Freq))) +
  geom_bar(mapping=aes(y=Freq), stat = "identity", fill = "green", alpha = 0.7) + 
  annotate(geom="label", 3, 15, label="Only 8/33 users recorded their weight.", fill="white") +
  labs(title = "Number of weight recordings per user",
       x = "User ID",
       y = "Number of Weight Records") +
  theme(axis.text.x = element_text(angle = 90))
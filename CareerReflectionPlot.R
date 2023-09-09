### What I Wish I Knew Before Becoming a Data Scientist Career Reflection Plot Code 

# Load the necessary library
library(ggplot2)

# Create a data frame with your career events 
data <- data.frame(
  EventName = c(), # name of event 
  Status = c(), # status 1 is positive, 0 negative 
  EventNumber = 1:N # first event to event n ex: 1:20 if you have 20 events 
)

# Create the timeline plot
ggplot(data, aes(x = EventNumber, y = Status)) +
  geom_point(size = 4) +
  geom_smooth(method = "loess", se = FALSE, color = "gray") + # Add a smooth line
  scale_x_continuous(breaks = NULL) + # Remove x-axis labels
  scale_y_continuous(breaks = c(1,0), name = "Success/Failure", labels = c("+","-")) +
  labs(
    x = "", # time range of events ex: 2020-2023
    y = "Status",
    title = "Career Reflection",
    color = "Event"
  ) +
  theme_minimal() +
  theme(legend.position = "top") +
  scale_color_discrete(guide = FALSE)

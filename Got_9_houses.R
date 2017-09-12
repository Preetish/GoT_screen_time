library(reshape2)
library(ggplot2)

got.house <- read.csv(file.choose(),header=TRUE)
got.house.melt <- melt(got.house, id.vars='house')

h <- ggplot(got.house.melt, 
       aes(x = reorder(house, value, FUN = sum), y = value, 
           fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8) + 
  coord_flip() +
  theme_minimal(base_size=10) +
  labs(title="Screen time of houses in the Game of Thrones",
       subtitle="By season",
       x="House", caption="by PromptCloud — promptcloud.com",
       y="Time (minutes)",
       fill=" ") + theme(axis.text=element_text(size=11))

ggsave("got-house.png", h, width = 10, height = 6, dpi = 300)
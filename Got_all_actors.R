library(reshape2)
library(ggplot2)

got <- read.csv(file.choose(),header=TRUE)
got.melt <- melt(got, id.vars='actor')

p <- ggplot(got.melt, 
    aes(x = reorder(actor, value, FUN = sum), y = value, 
        fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.7) + coord_flip() +
  theme_minimal(base_size=9) +
  labs(title="Screen time of characters in the Game of Thrones",
       subtitle="By seasons",
       x="Actors",
       y="Screen time (minutes)", col="Season",
       caption="by PromptCloud — promptcloud.com",
       fill=" ") + theme(axis.text=element_text(size=7))

ggsave("got-0.png", p, width = 6, height = 12, dpi = 300)

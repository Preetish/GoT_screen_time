library(ggplot2) 
library(dplyr) 
library(data.table)

actor <- read.csv(file.choose(),header=TRUE)

actor.s1 <- actor[,c(1,2)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.1) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 11) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s2 <- actor[,c(1,3)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.2) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s3 <- actor[,c(1,4)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.3) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s4 <- actor[,c(1,5)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.4) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s5 <- actor[,c(1,6)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.5) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s6 <- actor[,c(1,7)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.6) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

actor.s7 <- actor[,c(1,8)] %>%
  
  # get total for each ID
  group_by(actor) %>%
  summarise_all(sum) %>%
  mutate(total = season.7) %>%
  arrange(desc(total)) %>%
  
  # keep only top 10 & order by ID
  filter(row_number() <= 10) %>%
  mutate(actor = factor(actor, levels = actor[order(total)])) %>%
  select(-total) %>%
  
  # reshape via melt
  melt(id.vars = "actor")

a1 <-  ggplot(actor.s1, 
       aes(x = actor, y = value, 
           fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 1") + theme(plot.title = element_text(size = 28),
                                axis.text=element_text(size=25),
                                axis.title=element_text(size=27))

ggsave("got-act-s1.png", a1, width = 10, height = 6, dpi = 300)

a2 <-  ggplot(actor.s2, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 2") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s2.png", a2, width = 10, height = 6, dpi = 300)

a3 <-  ggplot(actor.s3, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 3") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s3.png", a3, width = 10, height = 6, dpi = 300)

a4 <-  ggplot(actor.s4, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 4") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s4.png", a4, width = 10, height = 6, dpi = 300)

a5 <-  ggplot(actor.s5, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 5") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s5.png", a5, width = 10, height = 6, dpi = 300)

a6 <-  ggplot(actor.s6, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 6") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s6.png", a6, width = 10, height = 6, dpi = 300)

a7 <-  ggplot(actor.s7, 
              aes(x = actor, y = value, 
                  fill=forcats::fct_rev(variable))) + 
  geom_bar(stat = "identity",width = 0.8,fill="steelblue") + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 7") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-act-s7.png", a7, width = 10, height = 6, dpi = 300)
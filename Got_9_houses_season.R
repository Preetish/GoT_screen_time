library(ggplot2)
house <- read.csv(file.choose(),header=TRUE)

s1 <- ggplot(data=house[,c(1,2)], 
       aes(x = reorder(house, season.1, FUN = sum), y=season.1, fill=season.1)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 1") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),                               
                              axis.title=element_text(size=27))

ggsave("got-house-s1.png", s1, width = 10, height = 6, dpi = 300)

s2 <- ggplot(data=house[,c(1,3)], 
             aes(x = reorder(house, season.2, FUN = sum), y=season.2, fill=season.2)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 2") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),                               
                              axis.title=element_text(size=27))

ggsave("got-house-s2.png", s2, width = 10, height = 6, dpi = 300)

s3 <- ggplot(data=house[,c(1,4)], 
             aes(x = reorder(house, season.3, FUN = sum), y=season.3, fill=season.3)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 3") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-house-s3.png", s3, width = 10, height = 6, dpi = 300)

s4 <- ggplot(data=house[,c(1,5)], 
             aes(x = reorder(house, season.4, FUN = sum), y=season.4, fill=season.4)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 4") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-house-s4.png", s4, width = 10, height = 6, dpi = 300)

s5 <- ggplot(data=house[,c(1,6)], 
             aes(x = reorder(house, season.5, FUN = sum), y=season.5, fill=season.5)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 5") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-house-s5.png", s5, width = 10, height = 6, dpi = 300)

s6 <- ggplot(data=house[,c(1,7)], 
             aes(x = reorder(house, season.6, FUN = sum), y=season.6, fill=season.6)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 6") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-house-s6.png", s6, width = 10, height = 6, dpi = 300)

s7 <- ggplot(data=house[,c(1,8)], 
             aes(x = reorder(house, season.7, FUN = sum), y=season.7, fill=season.7)) + 
  geom_bar(fill="steelblue", width=.8, stat="identity") + 
  guides(fill=FALSE) + coord_flip() +
  theme_minimal(base_size=12) +
  xlab("") + ylab("Time (minutes)") +
  ggtitle("Season 7") + theme(plot.title = element_text(size = 28),
                              axis.text=element_text(size=25),
                              axis.title=element_text(size=27))

ggsave("got-house-s7.png", s7, width = 10, height = 6, dpi = 300)
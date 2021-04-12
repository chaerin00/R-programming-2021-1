#IT공학전공 1912360 안채린

mid<-as.data.frame(ggplot2::midwest)
mid$underaged_ratio<-100-mid$popadults/mid$poptotal*100
library(dplyr)
mid %>% arrange(desc(underaged_ratio)) %>% head(5)


mid$underaged_class<-ifelse(mid$underaged_ratio>=40,"large",
       ifelse(mid$underaged_ratio>=30,"middle","small"))


mid %>% group_by(underaged_class) %>% summarise(n=n())

mid$popasian_ratio<-mid$popasian/mid$poptotal*100
mid %>% arrange(popasian_ratio) %>% head(10) %>% select(state,county,popasian_ratio)
                                     

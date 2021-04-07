df_mpg<-as.data.frame(mpg)
df_mpg<-df_mpg %>% mutate(total=hwy+cty)

df_mpg<-df_mpg %>% mutate(ave=total/2)

library(dplyr)

top3<-df_mpg %>% arrange(desc(ave)) %>% head(3)

top3

df_mpg %>% mutate(total=cty+hwy,avg=total/2) %>% arrange(desc(avg)) %>% head(3)

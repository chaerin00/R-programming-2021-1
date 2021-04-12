#IT공학전공 1912360 안채린

df_hflight<-as.data.frame(hflights::hflights)
head(df_hflight)

df_hflight[df_hflight$Month == 1 & df_hflight$DayofMonth==2,]
library(dplyr)
df_hflight %>% filter(Month==1 & DayofMonth==2)

df_hflight %>% arrange(Year,Month,DepTime,ArrTime)

df_hflight %>% mutate(delay_per_hour = (ArrDelay - DepDelay)/AirTime/60)

df_hflight %>% group_by(TailNum) %>% summarise(mean.math=mean(AirTime))                     

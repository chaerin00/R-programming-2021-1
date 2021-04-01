
df_md<-as.data.frame(ggplot2::midwest)

head(df_md)
str(df_md)
summary(df_md)

library(dplyr)
df_md<-rename(df_md,total=poptotal,asian=popasian)

str(df_md)

df_md$asian_ratio<-(df_md$asian/df_md$total)*100
str(df_md)

head(df_md)
hist(df_md$asian_ratio)

write.csv(df_md,file = "df_midwest.csv")
library(writexl)
writexl::write_xlsx(df_md,'df_midwest.xlsx')
saveRDS(df_md,file = 'df_midwest.rds')

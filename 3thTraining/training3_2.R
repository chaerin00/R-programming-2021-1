df_mpg %>% group_by(class) %>% summarise(avg_cty=mean(cty))%>% arrange(desc(avg_cty)) %>% head()
  


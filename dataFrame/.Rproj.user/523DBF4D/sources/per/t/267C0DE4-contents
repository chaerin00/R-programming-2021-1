norow<-nrow(iris)
mylabel<-c()

for(i in 1:norow){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i]<-"L"
  }else if(iris$Petal.Length[i]<=5.1){
    mylabel[i]<-"H"
  }else{
    mylabel[i]<-"M"
  }
}

print(mylabel)
newds<-data.frame(iris$Petal.Length,mylabel)
head(newds,20)

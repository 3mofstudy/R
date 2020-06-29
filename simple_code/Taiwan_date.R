Taiwan_date<-function(day,sep){
  a<-(strsplit (day,sep))
  a<-data.frame(a)
  a<-as.numeric(a[,])
  a<- paste((a[1]+1911),a[2],a[3], sep = "-")
  a<- as.Date(a)
  return (a)
}

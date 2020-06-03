s<-  function(x,y){
  a = c()
  k = 1
  for (i in x){
    for(j in y){
      a[k]=(i*j)
      k = k+1
    }}
  print(a)}
s(c(2:5),c(4:7))

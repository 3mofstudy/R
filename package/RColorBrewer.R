install.packages(RColorBrewer) #安裝RColorBrewer套件
library(RColorBrewer)  # 套用RColorBrewer套件 功用:選漂亮顏色繪圖
display.brewer.all()   #  呈現所有色票

rand.data = replicate (8,rnorm(100,100,sd=1.5)) # 隨機產生八組 各100個樣本 

boxplot(rand.data,col=brewer.pal(8,"YlOrRd"),
        xlab ="盒鬚圖") 
plot(rand.data,col=brewer.pal(8,"Set2"), 
       xlab ="點狀圖")

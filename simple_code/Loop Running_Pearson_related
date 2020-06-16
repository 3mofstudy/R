#匯入檔案
library(readxl)
data1 <- read_excel("~/GEO_database/GSE17536_OK/GSE17536.xlsx")

#建立空集合(r.val,p.val)儲存資料
r.val <- vector("double", 54675) #54675是基因總列數
p.val <- vector("double", 54675)

#移除資料中探針代號
mat <- as.matrix(data1[, -1])

#找尋特定探針位置
which(data1$ID_REF == "206991_s_at")  #206991_s_at 位置在16438

# for loop 
for(i in 1:nrow(data1)){
  rres <- cor.test(mat[16438, ], mat[i, ])
  r.val[i] <- rres$estimate
  p.val[i] <- rres$p.value
}

#結果儲存到data.frame
data2 <- data.frame("ID_REF" =data1$ID_REF,   r.val,  p.val)

#匯出檔案
write.table(data2,
            file = "D:/GSE17536.txt",
            quote = F,
            sep = ",",
            row.names = F)

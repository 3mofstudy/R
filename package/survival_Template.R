# 依序安裝 R套件 ，以R版本 4.0.0 為主
install.packages("devtools") # 安裝devtools包
install.packages("ggpubr") # 安裝ggpubr包
install.packages("survival") # 安裝survival包
install.packages("survminer") # 安裝survminer包

# 加載 R套件 (survival,survminer)
library(survival) 
library(survminer)

# 使用survival包的lung數據進行演示
data(lung) # 加载lung數據集
View(lung) # 查看數據集

# 擬合存活曲線
attach(lung) # 綁定數據集
Surv(time,status) # 創建對象

fit <- survfit(Surv(time,status) ~ sex,  # 創建生存對象 
               data = lung) # 數據集来源
fit # 查看擬合曲線信息

#使用summary()函數輸出更多詳細信息
summary(fit)

# 繪製基礎曲線
ggsurvplot(fit, data = lung)

# 繪製存活曲線
ggsurvplot(fit, # 擬合函數
           data = lung, # 添加資料集
           #fun = "cumhaz", # 繪製累計風險曲線 "event","cumhaz","pct"
           conf.int = TRUE, # 增加信賴區間
           pval = TRUE, # 添加P值
           surv.median.line = "hv",  # 增加中位數生存時間
           add.all = TRUE,    # 增加總患者生存曲線
           risk.table = TRUE, #添加風險表
           xlab = "Follow up time(d)",# 指定x軸標籤
           palette = "hue" ) #可选调色板有"hue" "grey","npg","aaas","lancet","jco", "ucscgb","uchicago","simpsons"和"rickandmorty".

# 美化存活曲線

ggsurvplot(fit, # 擬合函數
           data = lung,  # 指定數據集來源
           conf.int = TRUE, # 增加信賴區間
           pval.method = TRUE, # 添加檢定方法 
           pval = TRUE, # 添加P值
           surv.median.line = "hv",  # 增加中位數生存時間
           risk.table = TRUE, #添加風險表
           xlab = "Follow up time(d)", # 指定x軸標籤
           legend = c(0.8,0.75), # 指定圖例位置
           legend.title = "", # 設置圖例標題
           legend.labs = c("Male", "Female"), # 指圖例分组標籤
           break.x.by = 100)  # 設置x轴刻度間距

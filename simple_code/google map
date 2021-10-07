library(httr)  # 設定防火牆
set_config(
  use_proxy(url="http://proxy2.cwb.gov.tw", port=8888)
)
httr::GET("www.google.com")  # if it returns status like 200 ，problem has been resloved

library(ggplot2)
library(ggmap)

#1 Get API  key------------------------------------------------
api <- "AIzaSyCCfCVGZjakzDtJPQ1F8DLAtgJqtT9o7i8"
register_google(key = api)

#Taiwan ------

TWN_MAP <- get_map("Taiwan",zoom = 8)

ggmap(TWN_MAP)

#2--------------------------------------

library(ggmap)

TWN_MAP2 <- get_googlemap(center = c(lon = 120.58 ,lat =23.58),
                       zoom = 8,
                       language = "zh-TW",)
ggmap(TWN_MAP2)

#3--------------------------------------


register_google(key = api, write = TRUE)
tw.xy <- geocode("Taiwan")
ggmap(tw.xy)
tw.xy

#----------------------------------------------------------

#2--------------------------------------

library(ggmap)

Taipei_MAP1 <- get_googlemap(center = c(lon = 121.50 ,lat =25.06),
                             zoom = 11,
                             maptype = 'terrain') # 預設地形圖

Taipei_MAP2 <- get_googlemap(center = c(lon = 121.50 ,lat =25.06),
                             zoom = 11,
                             maptype = 'roadmap') # 道路圖

Taipei_MAP3 <- get_googlemap(center = c(lon = 121.50 ,lat =25.06),
                             zoom = 11,
                             maptype = 'satellite') # 衛星圖

Taipei_MAP4 <- get_googlemap(center = c(lon = 121.50 ,lat =25.06),
                             zoom = 11,
                             maptype = 'hybrid') # 衛星交通圖


ggmap(Taipei_MAP1)
ggmap(Taipei_MAP2)
ggmap(Taipei_MAP3)
ggmap(Taipei_MAP4)

TWN_MAP1 <- get_googlemap(center = c(lon = 120.80 ,lat =23.58), # 經緯度
                             zoom = 7,            #縮放比例
                             maptype = 'roadmap', # 衛星交通圖
                             language = "zh-TW", # 語言
                             color = "color",    # 圖片顏色
                             size = c(350, 350))  #圖片大小

ggmap(TWN_MAP1)


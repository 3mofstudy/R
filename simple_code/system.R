# 載入資料
 　source("路徑")             # 載入外部程式
 　sink("路徑")+sink()        # 紀錄程式執行結果
  
# 語系設定  
lct <- Sys.getlocale("LC_TIME")　#取得當前的語言
Sys.setlocale("LC_TIME", "C")　#設定語言
Sys.setlocale("LC_TIME", lct)　#重新設定為原語言
lct <- Sys.getlocale("LC_TIME")

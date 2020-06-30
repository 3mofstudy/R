# 可匯出 資料矩陣或資料框
write.table(x = Kidney1,            # 資料矩陣或資料框
            file ="D:/Kidney1.txt", # 儲存位置
            quote = TRUE,           # 文字兩邊加" "
            sep =",",               # 分隔符號
            row.names = FALSE,      # 是否輸出行名
            col.names = TRUE,       # 是否輸出行名
            eol = "\r\n",           # 結尾特殊符號 Unix/Windows/Mac = "\n" ,"\r\n", "\r"
            na  = ".",              # 遺漏值設定
            append = FALSE)         # True表示可以接續在原先存在的檔案尾端
            

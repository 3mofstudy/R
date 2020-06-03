CCR5 <-na.omit(CCR5) #直接移除遺漏值


options(warn = 0)  # warn = 0 為默認值，則所有warning messages會被儲存起來直到上級函數運行結束
options(warn = -1) # warn如果是負數，則所有warning message都被忽略
options(warn = 1)  # warn = 1，則一旦產生warning message，這條信息會被立即顯示出來
options(warn = 2)  # warn = 2 或更大的數值， 則warning message會被立即顯示並轉換成error message

###練習1：調整繪圖參數
#請透過函數「help()」查詢該如何完成下面這張圖：

###練習1答案
#你應該會看到範例程式碼：
boxplot(count ~ spray, data = InsectSprays, col = "lightgray")

#我們可以用我們的資料套進來：
boxplot(dat[,"eGFR"] ~ dat[,"Disease"], col = c("blue", "red"), ylab = "eGFR", xlab = "Disease", main = "eGFR value by Disease status", lwd = 1.5)

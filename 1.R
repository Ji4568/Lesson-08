###第一節：基礎繪圖函數簡介-1(1)
#同樣的資訊，使用圖像相呈現較於表格/文字，通常能讓閱讀者更快的獲得資訊。
#在R裡面，我們能夠畫出任何統計圖！
#請下載本週的範例資料 “Example data.csv”
dat = read.csv("Example data.csv", header = TRUE)
head(dat)

#基礎繪圖函數簡介-1(2)
#我們先從幾個簡單的統計圖開始
#直方圖：需要使用函數「hist()」
hist(dat[,"eGFR"])

#盒鬚圖：需要使用函數「boxplot()」
boxplot(dat[,"eGFR"])

#圓餅圖：需要使用函數「pie()」以及函數「table()」
pie(table(dat[,"Education"]))

#長條圖：需要使用函數「barplot()」以及函數「table()」
barplot(table(dat[,"Education"]))

#基礎繪圖函數簡介-1(3)

#這些圖都能透過增加不同的參數增加變化，我們可以透過函數「help()」查詢它們內部的參數。舉例來說，我們可以用下列方式改變圖的顏色
#在R裡面的顏色可以在Colors in R裡查看
#另外，這裡教一個新函數「par()」，他可以指定繪圖環境。其中最常見的應用為把4張圖放在同一張畫布內：
par(mfrow = c(2, 2))
hist(dat[,"eGFR"], col = "red")
boxplot(dat[,"eGFR"], col = "blue")
pie(table(dat[,"Education"]), col = c("blue", "red", "green"))
barplot(table(dat[,"Education"]), col = c("gray90", "gray50", "gray10"))

#你如果喜歡你畫的圖，可以透過函數「pdf()」把圖片存出去，注意最後一定要用函數「dev.off()」關掉那個PDF檔案
pdf("plot1.pdf", height = 8, width = 8, family = "serif")
par(mfrow = c(2, 2))
hist(dat[,"eGFR"], col = "red")
boxplot(dat[,"eGFR"], col = "blue")
pie(table(dat[,"Education"]), col = c("blue", "red", "green"))
barplot(table(dat[,"Education"]), col = c("gray90", "gray50", "gray10"))
dev.off()

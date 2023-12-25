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


###第二節：基礎繪圖函數簡介-2(1)
#接著我們介紹一個強大的函數「plot()」，他支援了多種不同的圖形，其中最主要的是散布圖：
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP")

#其實，我們可以修改點的造型，例如：
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19)

#基礎繪圖函數簡介-2(2)
#你可以為你的圖形加點東西，首先我們先介紹函數「lines()」。
#函數「lines()」的效果是按照順序把幾個點連起來，舉例來說…
#註：函數「plot.new()」及函數「plot.window()」是拿來開一張新畫布用的！
x = c(1, 4, 7)
y = c(2, 9, 6)
plot.new()
plot.window(xlim = c(0, 10), ylim = c(0, 10))
lines(x, y)

#當然，如果點夠密，你其實可以畫出圓！
z = 0:1000/100
x = sin(z) #三角函數sin
y = cos(z) #三角函數cos
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
lines(x, y)

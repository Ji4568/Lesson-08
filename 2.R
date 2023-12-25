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

#基礎繪圖函數簡介-2(3)
#學會函數「lines()」以後，我們能夠幫散布圖上加預測線了…
#預測線的方程式，需要先用第7課所學到的函數「glm()」幫忙建立，你看得懂下面的程式碼嗎？
# 建立MODEL以及預測線的座標
X = dat[,"SBP"]
Y = dat[,"DBP"]
model = glm(Y~X)
COEF = model$coefficients
x = c(0, 200)
y = COEF[1] + COEF[2] * x

plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19)
lines(x, y, col = "red", lwd = 2)

#基礎繪圖函數簡介-2(4)
#其實，你還可以為你的圖形加點料…
#函數「text()」可以為你的圖片上加文字描述
x = c(1, 0, -1, 0)
y = c(0, 1, 0, -1)
t = c("A", "B", "C", "D")
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
text(x, y, t)

#函數「points()」可以為你的圖片上加點
x = c(1, 0, -1, 0)
y = c(0, 1, 0, -1)
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
points(x, y, pch = 1:4)

#函數「legend()」可以為你的圖片加上註釋
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
legend("topleft", c("Female", "Male"), col = c("red", "blue"), pch = c(15, 19), bg = "gray90")
legend(0, 0, c("estimates", "95% CI"), lty = c(1, 2), lwd = 2, col = "black")

#函數「polygon()」可以畫多邊形
x = c(1, 0, -1, 0)
y = c(0, 1, 0, -1)
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
polygon(x, y, col = "green")


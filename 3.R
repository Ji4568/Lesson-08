###第三節：色彩透明度與函數(1)
#還記得剛剛的SBP對DBP的散布圖嗎?是不是感覺到有很多點重疊在一起。
#資料量多的時候經常會遇到這樣的問題，這時候我們可能需要告訴使用者不同區域點的密度。
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", cex = 2)

plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19, cex = 2)

#色彩透明度與函數(2)
#在R裡面，我們使用的是6或8位元的16進位色碼，其規格為：#[紅色][綠色][藍色][透明度]
#舉例來說，不透明的紅色的色碼為『#FF0000』或『#FF0000FF』
#透明度50%的紅色色碼為『#FF000080』
#透明度50%的黑色色碼為『#00000080』
x = c(1, 0, -1, 0)
y = c(0, 1, 0, -1)
plot.new()
plot.window(xlim = c(-1, 1), ylim = c(-1, 1))
points(x, y, pch = 19, cex = 2, col = c("#FF0000", "#FF0000FF", "#FF000080", "#00000080"))

#如果你懶得自己想色碼，函數「rgb()」可以協助你調色
rgb(1, 0, 0, 0.5)

rgb(0.7, 0.5, 0.3, 0.7)

#有了半透明的顏色後，剛剛的散布圖終於可以看出密度了
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19, cex = 2, col = "#00000030")

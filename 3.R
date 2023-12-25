###第三節：色彩透明度與函數(1)
#還記得剛剛的SBP對DBP的散布圖嗎?是不是感覺到有很多點重疊在一起。
#資料量多的時候經常會遇到這樣的問題，這時候我們可能需要告訴使用者不同區域點的密度。
plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", cex = 2)

plot(dat[,"SBP"], dat[,"DBP"], ylab = "DBP", xlab = "SBP", main = "Scatter plot of SBP and DBP", pch = 19, cex = 2)
